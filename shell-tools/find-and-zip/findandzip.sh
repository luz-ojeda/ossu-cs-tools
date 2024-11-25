#!/usr/bin/env bash

find . -name '*.html' | xargs -d '\n' tar -cvf myTar.tar

# we use -d '\n' to account for files with spaces like 'with space.html'