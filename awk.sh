#!/bin/sh
# This program is to practice 'awk' command.


# to print the second item.
echo "To print second item of each line."
awk '{print $2}' sample.txt

# to print the line number and the first item.
awk '{print NR "- " $1}' sample.txt

# to print the first item and second last item.
awk '{print $1,$(NF-1)}' sample.txt

# to print non-empty lines.
echo "To print the non-empty lines"
awk 'NF>0' sample.txt

# to count the lines in a file
echo "To count the lines in a file."
awk 'END {print NR}' sample.txt
