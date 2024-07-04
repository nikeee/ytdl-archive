FROM alpine:3.20

RUN apk add --no-cache \
    python3 \
    py3-pip \
    ffmpeg \
    aria2 \
    wget \
    curl

RUN apk add --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing/ \
    rmlint

RUN pip3 install --upgrade pip && \
    pip3 install yt-dlp

VOLUME ["/data"]
COPY ./fetch.sh /etc/periodic/weekly/fetch.sh

# Ref: https://mixu.wtf/cron-in-docker-alpine-image/
CMD crond -f
