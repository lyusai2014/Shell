#!/bin/sh

# This program is to practice 'sed' command


# Transfom with y
sed 'y/abcdef/ABCDEF/' fileinput >fileoutput

# s command, for substitution.
sed 's/abc/TYU/' fileinput >fileout

# replace the nth occurance of a pattern in a line.
sed 's/unix/linux/2' fileinput

# repalce all the occurance of the pattern in line.
# g,means global

sed 's/unix/linux/g' fileinput

# replace from nth occurance to all occurances in a line.
#sed 's/linux/unix/2g' fileinput
# does not work

# change the slash delimiter, using 3 same symbols are enough.

sed 's_unix_linux_g' fileinput

# use symbol & to represent the matched string
sed 's/unix/{&}/' fileinput
sed 's/unix/{&&}/' fileinput

# duplicate the replaced line with /p flag. 
# print the raplced line twice,print the unreplaced line once.
sed 's/unix/linux/p' fileinput


# only print the replaced line, use the -n option along with the /p flag.
sed -n 's/unix/linux/p' fileinput



# use the -e option to run multiple sed commands.
sed -e 's/unix/linux/'  -e 's/os/system/' fileinput

# replace string on a specific line number.
sed '3 s/unix/linux/' fileinput

# replace string on a range of lines.
sed '1,3 s/unix/linux/' fileinput

# replace on lines which match pattern.
sed '/linux/ s/unix/centor/' fileinput


# delete lines
sed '2 d' fileinput

# duplicate lines
sed '2 p' fileinput

# only print the lines which match the pattern, -n option and /pattern/ and /p flag. 

sed -n '/unix/p' fileinput

# add a line after a match,use a command
sed '/unix/a "Adding a new line"' fileinput

# add a line before a match, use i command
sed '/unix/i "add a new line"' fileinput




