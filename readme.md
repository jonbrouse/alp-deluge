# Docker Deluge - (Alpine Base)

A docker container for Deluge, this uses Alpine Linux as a base to keep filesize low. Total size of this image is 129.4mb!
Create the image by running below command, the default web GUI password is 'deluge'

```sh
docker build --tag=mlindsey/alp-deluge
```

Run image with run_docker.sh or the below command:

```sh
docker run -d --name=alp-deluge -v /torrents:/torrents -p 8112:8112 alp-deluge
```

## Volumes
All torrent data is stored under the '/torrents' folder
Inprogress - '/torrents/.in_progress'
Completed torrents - '/torrents/'

## Configuration Data
Stored under '/config'.


