FROM alpine:latest

RUN set -x \
 && apk add --no-cache ca-certificates curl ffmpeg python \
 && curl -Lo /usr/local/bin/youtube-dl https://yt-dl.org/downloads/latest/youtube-dl \
 && chmod a+rx /usr/local/bin/youtube-dl \
 && apk del curl \
 && mkdir /downloads \
 && chmod a+rw /downloads \
 && youtube-dl --version

ENV SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt

WORKDIR /downloads

VOLUME ["/downloads"]

ENTRYPOINT ["youtube-dl"]
CMD ["--help"]