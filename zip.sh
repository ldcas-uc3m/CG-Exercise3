#!/bin/bash
# Bash script to zip the whole project in order to make it deriverable
# please make sure zip and texlive are installed


# make sure git is up to date
git pull
git checkout main

# TODO: Remove whatever is in the .gitignore

# zip it (excluding useless stuff)
zip -r ../outfile.zip . -x zip.sh *.git\* README.md

# cleanup
git reset --hard HEAD
