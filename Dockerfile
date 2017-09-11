FROM alpine:latest

RUN apk add --no-cache ca-certificates curl ffmpeg python \
 && curl -sLo /usr/local/bin/youtube-dl https://yt-dl.org/downloads/latest/youtube-dl \
 && chmod +x /usr/local/bin/youtube-dl \
 && apk del curl \
 && mkdir /downloads \
 && chmod +rw /downloads

ENV SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt

WORKDIR /downloads

VOLUME ["/downloads"]

ENTRYPOINT ["youtube-dl"]