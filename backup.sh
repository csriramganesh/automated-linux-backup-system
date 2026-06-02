#!/bin/bash

SOURCE_DIR="/home/ubuntu/projects/automated-linux-backup-system/project_data"
BACKUP_DIR="/home/ubuntu/projects/automated-linux-backup-system/backups"
LOG_FILE="/home/ubuntu/projects/automated-linux-backup-system/backup.log"

TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)

mkdir -p "$BACKUP_DIR"

BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.zip"

zip -r "$BACKUP_FILE" "$SOURCE_DIR" > /dev/null

if [ $? -eq 0 ]
then
    echo "[$TIMESTAMP] SUCCESS: $BACKUP_FILE created" >> "$LOG_FILE"
    
    find "$BACKUP_DIR" -type f -name "*.zip" -mmin +7 | while read file
do
    echo "[$TIMESTAMP] DELETED: $file" >> "$LOG_FILE"
    rm -f "$file"
done

    echo "Backup created successfully!"
else
    echo "[$TIMESTAMP] FAILED: Backup creation failed" >> "$LOG_FILE"
    echo "Backup failed!"
fi
    
