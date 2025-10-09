#!/bin/bash
read -p "Directory path: " dir
if [ ! -d "$dir" ];
then
	echo "Error: Directory not found"
	exit 1
fi 

echo "Total size of directory '$dir':"
du -sh "$dir"
