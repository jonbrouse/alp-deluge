# Docker Deluge - (Alpine Base)

A docker container for Deluge, this uses Alpine Linux as a base (6mb) to keep the image small.

Run image with run_docker.sh or the below command:
The default web GUI password is 'deluge'

```sh
docker run -d --name=alp-deluge -v /torrents:/torrents -p 8112:8112 alp-deluge
```

## Volumes
All torrent data is stored under the '/torrents' folder
Inprogress - '/torrents/.in_progress'
Completed torrents - '/torrents/'

## Configuration Data
Stored under the '/config' directory.

