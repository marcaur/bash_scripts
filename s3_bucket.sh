#! /usr/bin/sh

# THIS SCRIPT WILL LOOK FOR A BASH FILE AND ADD THAT FILE TO AN S3 BUCKET


echo "Here is a list of your buckets: "
aws s3 ls

echo -n "Which bucket do you want to add the file?"
read BUCKET_NAME

echo -n "What is the name of the file? "
read FILE
# FIND ALL BASH SCRIPTS IN CURRENT DIRECTORY
find . -type f -name "$FILE.sh"
FILE="$FILE.sh"
echo "This is file $FILE "
if [ -f "$FILE" ];then
  echo "file exists"
  aws s3 cp $FILE s3://$BUCKET_NAME
else
  echo "file does not exist yet"
  touch $FILE
  echo "$FILE now exists."
fi
echo "DONE"
exit 1
