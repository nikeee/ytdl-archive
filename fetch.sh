#!/usr/bin/env sh
set -eux

# YTDL="youtube-dl"
YTDL="yt-dlp"

YTDL_OPTS="-4 -iwc -R 100 --no-post-overwrites"

$YTDL $YTDL_OPTS \
  --download-archive /data/archive.txt \
  --batch-file /data/sources.txt \
  -o "/data/files/(title)s-%(id)s.%(ext)s"

touch /data/last-sync.txt
