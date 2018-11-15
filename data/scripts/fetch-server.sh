#!/bin/bash
# Fetches a remote file/folder by name
# The matched name will be added to torrents/pulled-local/

# Paths on remote
data_dir="private/rtorrent/data"
torrent_dir="torrents/"
seed_only="torrents/seed-only/"
pulled_local="torrents/pulled-local/"
local="/mnt/Storage/Downloads/"

# Pull the name or wildcard from args
server="$1"
name="$2"

# Check the server for matching files
echo "Looking for matches"
matches=$(ssh "$server" "ls $data_dir | grep $2" 2>/dev/null)
echo $matches

function fetch_remote {
	sftp_arg="$1"
	echo $sftp_arg
	sftp_dest="$local"
	(sftp -r "$sftp_arg" "$sftp_dest") && ssh "$server" "touch $pulled_local/$1"
}
export -f fetch_remote

echo "Starting transfer"
echo "$matches" | parallel -v -j1 -k "sftp -a -r $server:$data_dir/{} $local && ssh $server 'touch $pulled_local/{}'" 2>&1
