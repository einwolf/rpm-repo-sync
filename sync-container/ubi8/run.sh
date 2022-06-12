#!/bin/bash

podman run --rm -it \
-v /srv/www/data1/os-repos/ubi-repos/ubi8-repos/20220611-ubi8-repos:/data/ubi8-os-repos:Z \
localhost/ubi8-reposync
