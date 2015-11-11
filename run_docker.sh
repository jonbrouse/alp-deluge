#!/bin/bash
docker run --name=alp-deluge -v /torrents:/torrents -p 8112:8112 alp-deluge
