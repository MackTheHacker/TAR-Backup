#!/bin/bash
# A simple shell script that creates an archive of the specified file type in the current directory (or the entire directory if none is provided)
DATE=$(date +%m-%d-%y)

echo "Enter the file exentsions of the files you'd like to backup, or leave it blank to archive all files in the current directory"
read userExt

if [ -z $userExt ]; then
	tar cvf backup-$DATE.tar * 
else 
	tar cvf backup-$DATE.tar *$userExt

fi 

