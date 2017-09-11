## youtube-dl

Docker container for running [youtube-dl](https://github.com/rg3/youtube-dl).

* built with `alpine:latest`
* includes `ffmpeg`
* `youtube-dl` is the entrypoint
* 86.5MB image

### Example usage:

Download a video:

```bash
$ docker run -it --rm -v "$(pwd):/download" gpaggi/youtube-dl \
    'https://www.youtube.com/watch?v=a01QQZyl-_I'
```