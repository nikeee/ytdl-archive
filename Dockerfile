FROM alpine:latest

RUN apk add --no-cache \
    python3 \
    py3-pip \
    ffmpeg \
    aria2 \
    wget \
    curl

RUN pip3 install --upgrade pip && \
    pip3 install yt-dlp

VOLUME ["/data"]
COPY ./fetch.sh /etc/periodic/weekly/fetch.sh

# Ref: https://mixu.wtf/cron-in-docker-alpine-image/
CMD crond -f
