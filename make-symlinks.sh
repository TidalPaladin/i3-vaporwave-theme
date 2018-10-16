#!/bin/sh
# Generates symlinks from config files in the repo
# to various the appropriate system locations

find -name symlinks.sh -execdir "bash" {} +
