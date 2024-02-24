# #!/usr/bin/env bash
# #Define the remote server
# remote_server="f40e29fe7b2f.3a2627c1.alu-cod.online"
# remote_dir="/summative/0923-2023S/"
# #Source Directory
# source_dir="negpod_7-q1"
# #Backup Directory
# backup_dir="backup-negpod_7-q1"
# #create_dir
# mkdir "$backup_dir"
# #copy content of source_dir
# cp -r "$source_dir" "$backup_dir"
# #Transfer to the remote server
# scp -r "$backup_dir" "$remote_server:$remote_dir"
# #Remove the backup from our sandbox
# rm -r "$backup_dir"

# echo "The directory has been backed up"

# Configuration
SOURCE_DIR="Negpod_7-q1"
DEST_HOST="22a648371a58.70681577.alu-cod.online/"
DEST_USER="22a648371a58"
DEST_DIR="/summative-test"
PASSWORD="aef5e6d1d7d10abb785f"

sshpass -p "$PASSWORD" scp -o StrictHostKeyChecking=no -r "$SOURCE_DIR" "$DEST_USER@$DEST_HOST:$DEST_DIR"

if [ $? -ne 0 ]; then
  echo "Failed to copy directory"
  exit 1
else 
  echo "Directory copied successfully"
fi