# FROM debian:stable-slim
FROM alpine:latest

# RUN apt-get update -yqqq && apt-get install -yqqq \
#     python3 \
#     python3-pip \
#     ffmpeg \
#     aria2 \
#     wget \
#     curl

RUN apk add --no-cache \
    python3 \
    py3-pip \
    ffmpeg \
    aria2 \
    wget \
    curl

RUN pip3 install --upgrade pip
RUN pip3 install yt-dlp
RUN ffmpeg -version && yt-dlp --version

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
