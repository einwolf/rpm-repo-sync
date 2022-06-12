#!/bin/bash

podman run --rm -it \
-v /srv/www/data1/os-repos/ubi-repos/ubi9-repos/20220611-ubi9-repos:/data/ubi9-os-repos:Z \
localhost/ubi9-reposync
