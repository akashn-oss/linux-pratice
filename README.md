# Hello and Welcome to the Linux Practice Lab

This repository provides a simple environment to practice basic Linux commands.  
We will first create all the files and directories needed for practice.

---

## Setup Instructions

1. Make sure you are in the folder where `setup.sh` is located.  

2. Make the script executable and run it:
```bash
chmod u+x setup.sh
./setup.sh
cd practice_env


Practice Commands:

pwd — Print Working Directory
Shows where you are.

ls — List files/folders
Displays what’s in the current directory.

ls -l — Long listing
Shows file details: permissions, owner, size, date.

ls -a — Show all
Includes hidden files (those starting with .).

cd <directory> — Change directory
Move into another folder.

cd .. — Go back
Moves up one folder.

cd ~ — Home directory
Jump to your home folder.

touch file.txt — Create empty file

mkdir new_folder — Create new folder

cp file1 file2 — Copy a file

mv old.txt new.txt — Move or rename file

rm file.txt — Delete a file

rm -r folder — Delete a folder and its contents

cat file.txt — Show entire file

less file.txt — Scroll through file (press q to quit)

head file.txt — Show first 10 lines

whoami — Show current user