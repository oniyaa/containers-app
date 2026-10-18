container run --rm -it \
  --cap-add NET_ADMIN \
  --volume "$PWD/configs:/configs:ro" \
  wg-test:24.04