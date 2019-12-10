#!/bin/bash
# Backup single namespace and delete older than 7 days
# Script by kienlt

# Init Varriables
date=$(date -I)
backup_path=/data1/backup/aerospike/kienlt/
full_path=$backup_path$date
namespace=kienlt

# Do backup 
asbackup --namespace $namespace --directory $full_path

# Remove backup older than 7 days
find $backup_path* -type d -ctime +7 -exec rm -rf {} \;
