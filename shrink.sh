#!/bin/sh
# Purpose: batch image resizer
# Source: https://github.com/cseas/shrink
# Author: Abhijeet Singh
# Make script executable by using chmod +x shrink.sh

# add code to display original images total size

echo "By default, images will be shrinked to 40% of the original size."
# add option to ask how much the images should be shrinked

for filepath in ./original/*.jpg; do
    echo $filepath
    # basic syntax: convert -resize 40% source.jpg dest.jpg
    # run basename --help for more information on the command.
    convert -resize 40% $filepath ./shrinked/$(basename $filepath)
done

# add code to display shrinked images total size

# Fix issue: Code only works for .jpg images, not .jpeg
# Fix issue: Script creates a .jpg file in the shrinked directory.