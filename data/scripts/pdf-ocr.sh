#!/bin/sh
# Implements a multithreaded PDF OCR system using GNU parallel and
# tesseract. Supply one argument, the name of the pdf file to process.

# Extract file name from extension
file_name=$(echo $1 | awk -F . '{print $1}')

# Determine how many pages in the file $1
pages=$(pdfinfo $1 | grep -i pages | awk '{print $2}')
let pages=$pages-1

# Create a range 0-pages
range="seq 0 $pages"

# Create list of array indexed files
temp_name='ocr_dump_temp'
seq 0 $pages | parallel -j+0 "convert -density 300 \"$1[{}]\" -background white -alpha Off -depth 8 tiff:- | tesseract stdin $temp_name{} pdf" 2>/dev/null

# Splice pdf pages created in parallel
pdfjoin $temp_name*.pdf --outfile "$file_name-ocr.pdf"

# Cleanup
rm $temp_name*.pdf
