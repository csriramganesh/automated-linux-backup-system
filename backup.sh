#!/bin/bash

SOURCE_DIR="project_data"
BACKUP_DIR="backups"
LOG_FILE="backup.log"

TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)

mkdir -p "$BACKUP_DIR"

BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.zip"

zip -r "$BACKUP_FILE" "$SOURCE_DIR" > /dev/null

if [ $? -eq 0 ]
then
    echo "[$TIMESTAMP] SUCCESS: $BACKUP_FILE created" >> "$LOG_FILE"
    echo "Backup created successfully!"
else
    echo "[$TIMESTAMP] FAILED: Backup creation failed" >> "$LOG_FILE"
    echo "Backup failed!"
fi
