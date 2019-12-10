#!/bin/bash
# Backup multiple namespace and delete older than 7 days
# Script by kienlt
# Required aerospike and aerospike tool installed in this machine
# namespace folder automatically created

# Init Varriables
date=$(date -I)
backup_path=/data/backup/
namespaces=$(aql -o raw -c "show namespaces"  | sort -u | grep -oE "\"(.*)\"" | tr -d "\"")

# Do backup 
#asbackup --namespace $namespace --directory $full_path

# Remove backup older than 7 days
#find $backup_path -type d -ctime +7 -exec rm -rf {} \;

# Do backup 
for ns in $namespaces
  do asbackup --namespace $ns --directory ${full_path}${ns}_${date}
done
