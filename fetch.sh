#!/usr/bin/env sh
set -eux

# YTDL="youtube-dl"
YTDL="yt-dlp"
YTDL_OPTS="-4 -iwc -R 100 --no-post-overwrites"

$YTDL $YTDL_OPTS \
  --download-archive /data/archive.txt \
  --batch-file /data/sources.txt \
  -o "/data/files/%(extractor)s/%(uploader_id)s/%(upload_date)s-%(title)s-%(duration)ss-%(id)s.%(ext)s"

touch /data/last-sync.txt
