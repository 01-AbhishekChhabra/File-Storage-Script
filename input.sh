#backup file input
echo "Enter Source Folder"
read sourceFolder
echo "Enter Destination Folder"
read destinationFolder

#backup file source
backup_file=/home/abhishek/$sourceFolder

touch sourceFile.txt
cat > /home/abhishek/sourceFile.txt <<EOF
$backup_file
EOF

#destination file 
dest=/home/abhishek/$destinationFolder

touch destinationFile.txt
cat > /home/abhishek/destinationFile.txt <<EOF
$dest
EOF

#Email ID for Notification
echo "Enter Email-ID for getting information about backup"
read email

touch /home/abhishek/emailFile.txt
cat > /home/abhishek/emailFile.txt <<EOF
$email
EOF

echo "Enter time period for automating this script"

echo "Enter Minute field"
read a

echo "Enter Hour Field"
read b

echo "Enter Day Of Month"
read c

echo "Enter Month Field"
read d

echo "Enter Day of Week"
read e

touch /home/abhishek/automate.txt
cat > /home/abhishek/automate.txt <<EOF
$a $b $c $d $e /home/abhishek/run.sh
EOF



