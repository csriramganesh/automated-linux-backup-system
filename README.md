# Automated Linux Backup System

A Bash scripting project that automates Linux backups using ZIP archives, Cron Jobs, logging, and automatic cleanup of old backups.

## Project Overview

This project demonstrates how to build a simple backup automation solution commonly used in Linux environments.

The script:

- Creates timestamp-based ZIP backups
- Stores backups in a dedicated directory
- Generates backup logs
- Runs automatically using Cron Jobs
- Removes old backups automatically

---

## Features

✅ Automated ZIP backups

✅ Timestamp-based backup naming

✅ Backup logging

✅ Cron Job scheduling

✅ Automatic cleanup of old backups

✅ Backup verification

---

## Technologies Used

- Bash Scripting
- Linux
- Cron Jobs
- ZIP Utility
- Find Command
- Git & GitHub

---

## Project Structure

```text
automated-linux-backup-system
├── backup.sh
├── backup.log
├── backups
├── project_data
├── screenshots
└── README.md
```

---

## How It Works

### Step 1: Create Backup

The script creates a timestamp and generates a ZIP archive of the target directory.

Example:

```bash
backup_2026-06-02_16-30-15.zip
```

### Step 2: Log Backup Activity

Every successful backup is recorded in:

```text
backup.log
```

Example:

```text
[2026-06-02_16-30-15] SUCCESS: backup created
```

### Step 3: Automated Scheduling

Cron executes the backup script automatically.

Demo schedule:

```cron
* * * * * /path/to/backup.sh
```

Production example:

```cron
0 1 * * * /path/to/backup.sh
```

### Step 4: Cleanup Old Backups

Old backup files are automatically removed.

Demo version:

```bash
find "$BACKUP_DIR" -type f -name "*.zip" -mmin +7 -delete
```

Production version:

```bash
find "$BACKUP_DIR" -type f -name "*.zip" -mtime +7 -delete
```

---

## Installation

Clone the repository:

```bash
git clone https://github.com/YOUR_USERNAME/automated-linux-backup-system.git
cd automated-linux-backup-system
```

Make the script executable:

```bash
chmod +x backup.sh
```

Run the script:

```bash
./backup.sh
```

---

## Screenshots

### 1. GitHub Repository Created

![GitHub Repository](screenshots/01_empty_github_repository.png)

### 2. Project Structure Created

![Project Structure](screenshots/02_project_structure_created.png)

### 3. Backup Script and Execution

![Backup Script](screenshots/03_backup_script_and_execution.png)

### 4. Backup Verification

![Backup Verification](screenshots/04_backup_verification.png)

### 5. Logging Functionality

![Logging](screenshots/05_logging_added.png)

### 6. Cron Job Configuration

![Cron Configuration](screenshots/06_cron_configuration.png)

### 7. Cleanup Logic

![Cleanup Logic](screenshots/07_cleanup_logic_added.png)

### 8. Final Project Structure

![Final Structure](screenshots/08_final_project_structure.png)

---

## Learning Outcomes

Through this project I practiced:

- Bash scripting fundamentals
- Linux file management
- ZIP archive creation
- Cron Job automation
- Log generation and monitoring
- Backup retention policies
- Git and GitHub workflow

---

## Future Enhancements

- Store backups in Amazon S3
- Email backup reports
- Restore automation script
- Configuration file support
- Backup compression options

---

## Author

**Sriram Ganesh**


