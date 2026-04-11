#!/usr/bin/env sh

set -eux

# YTDL="youtube-dl"
YTDL="yt-dlp"
YTDL_OPTS="-4 -iwc -R 100 --no-post-overwrites --restrict-filenames"

$YTDL $YTDL_OPTS \
  --download-archive /data/archive.txt \
  --batch-file /data/sources.txt \
  --write-info-json --write-thumbnail \
  -o "/data/files/%(extractor)s/%(uploader_id)s/%(upload_date)s-%(title)s-%(duration)s-%(id)s.%(ext)s"

touch /data/last-sync.txt
