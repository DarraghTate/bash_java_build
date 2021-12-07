#!/bin/bash
# Darragh Tate, 2021
# A simple program for compiling & executing Java files


printf "Enter the java filename (without '.java')\nList of java files in current folder:\n\n"
# Lists all files in current directory with ".java" at the end. "." explicitly states only files in the current directory
find . -name "*.java" 

# Allows the user to input the name of the file 
printf "\n>: "
read -r filename

#if test -f $filename.java; then

# If a previous compiled version exists, then it is deleted
if test -f "$filename.class"; then
    printf "Old version of %s.class file detected; deleting old version...\n" "$filename"
    rm -r "$filename.class"
fi   

# The program is compiled
javac "$filename.java"

printf "File %s.java successfully compiled\n\n" "$filename"
# The program is executed
java "$filename"