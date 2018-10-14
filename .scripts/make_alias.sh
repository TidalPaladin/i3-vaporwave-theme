#!/bin/bash
# Creates an alias for each script in the folder


cat . | parallel alias {}
