#!/bin/bash

set -e

echo "开始转码..."

container run --rm \
  -v "$HOME/Downloads:/downloads" \
  ffmpeg:24.04 \
  -hide_banner \
  -i /downloads/video.mp4 \
  -c:v libx264 \
  -preset ultrafast \
  -crf 23 \
  -threads 2 \
  -c:a aac \
  -b:a 128k \
  -movflags +faststart \
  -y \
  /downloads/video-h264.mp4

echo "转码成功！"
echo "输出文件：$HOME/Downloads/video-h264.mp4"

ls -lh "$HOME/Downloads/video-h264.mp4"