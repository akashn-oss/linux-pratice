#!/usr/bin/env bash
set -e

BASE_DIR="practice_env"

echo "Creating practice environment in $BASE_DIR..."
rm -rf "$BASE_DIR"
mkdir -p "$BASE_DIR"
cd "$BASE_DIR"

# Basic files
echo "Hello World" > hello.txt
touch empty.txt
echo -e "line1\nline2\nline3\nline4\nline5\nline6\nline7\nline8\nline9\nline10\nline11" > long.txt

# Directories
mkdir dir1 dir2
echo "This is file1 in dir1" > dir1/file1.txt
echo "Another file in dir1" > dir1/file2.log
echo "File inside dir2" > dir2/file3.txt

# Hidden file & directory
echo "secret stuff" > .hidden_file
mkdir .hidden_dir
echo "hidden content" > .hidden_dir/hidden.txt

# Subdirectory
mkdir -p nested/subA/subB
echo "deep file" > nested/subA/subB/deep.txt

# Symlink
ln -s ../hello.txt nested/subA/link_to_hello.txt

# Binary file
dd if=/dev/urandom of=random.bin bs=1K count=1 status=none

# Logs for tail -f
mkdir logs
echo "INFO app started" > logs/app.log
echo "WARNING something odd" >> logs/app.log
echo "ERROR failed here" >> logs/app.log

# Permissions examples
chmod 640 dir1/file1.txt   # only user read/write, group read, others none
chmod 666 empty.txt        # everyone read/write
chmod 755 dir2             # directory executable

# Ownership (only works with sudo/root, otherwise skipped)
if [ "$(id -u)" -eq 0 ]; then
  chown root:root random.bin || true
else
  echo "Skipping chown (not root)."
fi

cd ..
echo "Done. Your practice environment is ready in $BASE_DIR/"
