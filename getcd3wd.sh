#!/bin/bash

# URL of the website to download
url="https://www.cd3wdproject.org/CD3WD/INDEX.HTM"

# Directory where you want to save the website
destination_directory="cd3wd_website"

# Create the destination directory
mkdir -p "$destination_directory"

# Use wget to download the entire website
wget --recursive --no-clobber --page-requisites --html-extension \
     --convert-links --restrict-file-names=windows --domains www.cd3wdproject.org \
     --no-parent --no-check-certificate -P "$destination_directory" "$url"

echo "Download complete."