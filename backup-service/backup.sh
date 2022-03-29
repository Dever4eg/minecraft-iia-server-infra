#!/bin/sh

name="$(date +"%Y-%m-%d-%H-%M")-devnull-backup"

echo "Copying files"
cp -R /var/devnull /tmp/$name

echo "Archiving files to tar.gz"
tar -czvf "/tmp/$name.tar.gz" /tmp/$name
rm -rf /tmp/$name

echo "Sending to s3"
aws s3 cp /tmp/$name.tar.gz s3://$S3_BUCKET/$name.tar.gz

echo "Moving to backups folder"
mv /tmp/$name.tar.gz /var/backups/$name.tar.gz
