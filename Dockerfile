FROM alpine:3.22

RUN apk add --no-cache \
    python3 \
    py3-pip \
    ffmpeg \
    aria2 \
    wget \
    curl \
    nano

RUN apk add --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing/ \
    rmlint

RUN pip3 install --break-system-packages --upgrade pip && \
    pip3 install --break-system-packages yt-dlp

VOLUME ["/data"]
COPY ./fetch.sh /etc/periodic/weekly/fetch.sh

# Ref: https://mixu.wtf/cron-in-docker-alpine-image/
CMD crond -f
