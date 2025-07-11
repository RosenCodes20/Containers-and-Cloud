#!/bin/bash

# ===== Basic Navigation =====
pwd         # Print current directory
ls -l       # List directory contents in long format
cd /path    # Change to specified directory

# ===== File Management =====
touch file.txt     # Create an empty file
cp file1 file2     # Copy file1 to file2
mv file1 file2     # Move or rename file1 to file2
rm file.txt        # Remove a file
mkdir new_dir      # Create a new directory
rmdir empty_dir    # Remove an empty directory

# ===== Viewing Files =====
cat file.txt       # Display contents of file
less file.txt      # View file one page at a time
head file.txt      # Show first 10 lines of file
tail file.txt      # Show last 10 lines of file

# ===== Permissions =====
chmod 755 script.sh    # Set permissions
chown user:group file  # Change file owner and group

# ===== System Info =====
whoami         # Show current user
uname -a       # Show system info
df -h          # Show disk space usage
free -h        # Show memory usage
top            # Show running processes

# ===== Networking =====
ping -c 4 google.com   # Test network connection
ip a                  # Show IP address info
curl https://example.com   # Fetch web content

# ===== Package Management (Debian-based) =====
sudo apt update       # Update package lists
sudo apt upgrade      # Upgrade all packages
sudo apt install pkg  # Install a package

# ===== Process Management =====
ps aux           # Show all processes
kill PID         # Kill process by PID

# ===== Sudo and Root =====
sudo command     # Run a command as root
su -             # Switch to root user

# ===== Manual and Help =====
man ls           # Show manual for 'ls'
command --help   # Show help for any command
