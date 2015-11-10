# Docker Deluge - (Alpine Base)

A docker container for Deluge, this uses Alpine Linux as a base (6mb) to keep the image small..

### Dockerhub
The built image is also hosted at dockerhub, therefore to just get Deluge up and running without 
building an image you can run the following command with docker.

```sh
docker run -d --name=alp-deluge -v /pathtotorrents:/torrents -p 8112:8112 mlindsey/alp-deluge'
```

### Build your own image
Steps to build the image:

- Clone the repo.

- Build the image with 'build_docker.sh' or command:
```sh
docker build -t [name the image] .
```

- Run the built image with 'run_docker.sh' or command:
```sh
docker run -d --name=alp-deluge -v /pathtotorrents:/torrents -p 8112:8112 alp-deluge
```

The default web GUI password is 'deluge'

## Volumes
All torrent data is stored under the '/torrents' folder
Inprogress - '/torrents/.in_progress'
Completed torrents - '/torrents/'

## Configuration Data
Stored under the '/config' directory.

