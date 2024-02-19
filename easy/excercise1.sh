#!/bin/bash
touch file1.txt file2.txt file3.txt file4.txt file5.txt
echo "this are the file currently in the folder \n$(ls -1)"
echo "there are $(ls -1 | wc -l) files in this folder"
#WILL RETURN THE CONTENT OF THE FOLDER AND HOW MUCH FILE THERE ARE, ls -1 WILL RETURN THE FILE AS LIST,
#WHILE WE PIPE THE RESULT AND WITH wc -l WE COUNT THE NUMBER OF THE LINES
mkdir temp
echo "after creating a new folder, this are the file currently in your folder: \n $(ls)"
cp /home/kali/Desktop/bash/*.txt temp #NOW WE TAKE ALL THE TXT FILE FROM A SPECIFIC FOLDER (IN THIS CASE THE ONE FROM THIS EXERCISE) AND WE COPY ALL THE CONTENT TO THE NEWLY CREATED TEMP FOLDER
echo "we copied the txt files from this folder to the temp folder"
cd temp
ls -1
echo "now we will delete the temp folder"
cd ..
rm -r temp
ls -1
echo "now we will remove all the txt file created"
rm *.txt
ls -1
