#!/bin/bash

podman run --rm -it \
-v /srv/www/data1/os-repos/centos-repos/20220602-centos7-repos:/data/centos7-repos:Z \
-v /srv/www/data1/os-repos/centos-repos/20220602-centos7-mirror-repos:/data/centos7-mirror-repos:Z \
localhost/centos7-reposync
