#!/bin/bash

# 2. Find the number of words (in /usr/share/dict/words) that contain at least
# three as and don’t have a 's ending. What are the three most common last 
# two letters of those words? sed’s y command, or the tr program, may help you
# with case insensitivity. How many of those two-letter combinations are 
# there? And for a challenge: which combinations do not occur?

# The number of words that contain at least three as and don’t have a 's ending
sed -nE '/([^a]*a){3,}/p' /usr/share/dict/words | wc -l

# What are the three most common last two letters of those words?
sed -nE '/([^a]*a){3,}/p' /usr/share/dict/words | sed 's/.*\(..$\)/\1/' | sort | uniq -c | sort -nk1,1 | tail -n3

# How many of those two-letter combinations are there?
sed -nE '/([^a]*a){3,}/p' /usr/share/dict/words | sed 's/.*\(..$\)/\1/' | sort | uniq -c | wc -l # count lines with wc

# 3. To do in-place substitution it is quite tempting to do something like 
# sed s/REGEX/SUBSTITUTION/ input.txt > input.txt. However this is a bad idea, why?
# Is this particular to sed? Use man sed to find out how to accomplish this.

# using the -i, --in-place option
sed -i 's/REGEX/SUBSTITUTION/' input.txt

# 4. Find your average, median, and max system boot time over the last ten boots.
# Use journalctl on Linux and log show on macOS, and look for log timestamps
# near the beginning and end of each boot. 

# find boots using journalctl
# get last ten
# find average
# find median
# find max

journalctl | grep
journalctl --list-boots