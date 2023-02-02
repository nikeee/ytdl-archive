# ytdl-archive
Just a wrapper for a simple shell script.

Example usage (`compose.yaml`):
```yaml
services:
  archiver:
    image: ghcr.io/nikeee/ytdl-archive
    volumes:
      - ./data:/data
```
