#!/usr/bin/env sh

# YTDL="youtube-dl"
YTDL="yt-dlp"

YTDL_OPTS="-4 -iwc -R 100 --no-post-overwrites"

while true
do
    $YTDL $YTDL_OPTS --download-archive archive.txt --batch-file sources.txt -o "files/(title)s-%(id)s.%(ext)s"
    sleep 60000
done
