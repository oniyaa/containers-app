container run --rm \
  -v "$HOME/Downloads:/downloads" \
  ffmpeg:24.04 \
  -i /downloads/video-h264.mp4