#!/bin/bash

podman run --rm -it \
-v /srv/www/data1/os-repos/ubi-repos/ubi7-repos/20220611-ubi7-mirror-repos:/data/ubi7-mirror-repos:Z \
-v /srv/www/data1/os-repos/ubi-repos/ubi7-repos/20220611-ubi7-repos:/data/ubi7-repos:Z \
localhost/ubi7-reposync
