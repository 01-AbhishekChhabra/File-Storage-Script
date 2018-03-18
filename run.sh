#read from sourceFile 
sourceFile="/home/abhishek/sourceFile.txt"
inputInSourceFile=$(cat "$sourceFile")

#read from destinationFile 
destinationFile="/home/abhishek/destinationFile.txt"
inputInDestinationFile=$(cat "$destinationFile")

#read from emailFile 
emailFile="/home/abhishek/emailFile.txt"
inputInEmailFile=$(cat "$emailFile")

#creating archive filename
day=`date +%b-%d-%y_%H:%M:%S`
archive_file=backup-$day.tar.gz

#backup the files using tar
tar -cpzf $inputInDestinationFile/$archive_file $inputInSourceFile

echo "Backup Created `date +%b-%d-%y_%H:%M:%S`for Source Folder $inputInSourceFile" | mail -s "Backup Created" $inputInEmailFile
echo "Email Notification Sent"

crontab /home/abhishek/automate.txt

