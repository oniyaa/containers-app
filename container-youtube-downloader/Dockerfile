FROM ubuntu:24.04

RUN apt update && \
    apt install -y ffmpeg curl unzip && \
    curl -fsSL https://deno.land/install.sh | sh && \
    curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp \
    -o /usr/local/bin/yt-dlp && \
    chmod +x /usr/local/bin/yt-dlp && \
    ln -s /root/.deno/bin/deno /usr/local/bin/deno && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /downloads

ENTRYPOINT ["yt-dlp"]