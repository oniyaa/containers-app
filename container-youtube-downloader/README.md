# YouTube Downloader

A YouTube downloader based on [yt-dlp](https://github.com/yt-dlp/yt-dlp), FFmpeg, and Deno, running in Apple Container.

## Requirements

- macOS
- Apple Container

## Build

Clone the repository:

```bash
git clone <repository-url>
cd youtube-downloader
```

Build the container image:

```bash
./build.sh
```

The image will be created as:

```text
youtube-downloader:24.04
```

## Download

Edit `main.sh` and set the YouTube URL:

```bash
URL="https://youtu.be/xxxxxxxxxxx"
```

Then run:

```bash
./main.sh
```

The downloaded video will be saved to:

```text
~/Downloads
```

## Video Format

The downloader selects:

- H.264/AVC video
- AAC audio
- Up to 1080p
- MP4 output

FFmpeg automatically merges the video and audio streams into a single MP4 file.

## Project Structure

```text
youtube-downloader/
├── Dockerfile
├── build.sh
├── main.sh
├── README.md
└── .gitignore
```

- `Dockerfile` — Defines the container environment.
- `build.sh` — Builds the Apple Container image.
- `main.sh` — Downloads a YouTube video.
- `README.md` — Project documentation.
- `.gitignore` — Git ignore rules.