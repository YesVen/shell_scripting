#!/bin/bash

# This file shows how to read and write from files using bas

echo "My file" > file.txt

cat file.txt

# Clear the contents of the file.txt
> file.txt
echo "print start"
echo 
cat file.txt
echo "print end"

# add some text again
echo "Some Text" > file.txt
echo
cat file.txt

# append some text in file using >>
echo "Some more text" >> file.txt
echo
cat file.txt

# Reading file
echo -e "\nReading the file \"file.txt\""
i=1
while read f; do
	echo "Line $i: $f"
	((i+=1))
done < file.txt 

# Another way to print the file contents, by using the file as an argument
echo 
cat < file.txt

ftp -n < ftp.txt
