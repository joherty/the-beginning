#!/bin/sh

# Source and destination paths
SOURCE_DIR="/home/john/containers"
DEST_DIR="/mnt/backups"
#REMOTE_USER="john"
#REMOTE_HOST="10.0.0.8"
#REMOTE_DIR="/srv/dev-disk-by-uuid-3c6948e6-4fbd-466a-b6b6-1b664272a93b/Data/backups"

# Rsync options
RSYNC_OPTIONS="-avz --delete"

# Rsync command
rsync $RSYNC_OPTIONS $SOURCE_DIR $DEST_DIR
#rsync $RSYNC_OPTIONS $SOURCE_DIR ${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_DIR}
