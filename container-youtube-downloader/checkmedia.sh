container run --rm \
  -v "$PWD/urls.txt:/urls.txt" \
  ytdl:24.04 \
  -F \
  -a /urls.txt