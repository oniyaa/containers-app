#!/bin/bash

URL_FILE="$PWD/urls.txt"

if [ ! -f "$URL_FILE" ]; then
  echo "错误：找不到 URL 文件：$URL_FILE"
  exit 1
fi

container run --rm \
  -v "$HOME/Downloads:/downloads" \
  -v "$URL_FILE:/urls.txt" \
  ytdl:24.04 \
  -P /downloads \
  -f "628+140" \
  --merge-output-format mp4 \
  -a /urls.txt