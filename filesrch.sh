#! /usr/bin/bash
#this program will allow user to perform searches for a file or program
# user will input name of file/program (display a list of file types)
# start search in /bin if program

# if file does not exist, user will have option to create one
read -p "Are you searching for a file or directory?" USRCHOICE

if [ $USRCHOICE == 'd']
  read -p "What is the name of the file you are looking for" USRDIR

if [ $USRCHOICE == 'f']
  read -p "What is the name of the file you are looking for" USRFILE

find ~ -type $USRCHOICE -name " $USRFILE.txt " -size +2G

#common find tests

# -cmin n : matches files that were modified n minutes ago ( can use +n 'more than')
# -cnewer file : matches files that were modified more recently than 'file'
# -empty  :  matches empty files and directories
  #if [ -e $USRFILE.txt]
  #  then
  #    echo "The file: $USRFILE already exists"
  #  else
  #      echo "Sorry, but that file does not exist :( "
  #      read -p "Do you want to create a text file named $USRFILE.txt? [y/n]" USRINPUT
  #  case "$USRINPUT" in
  #    [yY] | [yY][eE][sS])
