#!/bin/bash

podman run --rm -it \
-v /srv/www/data1/os-repos/alma-repos/20220612-alma8-repos:/data/alma8-os-repos:Z \
localhost/alma8-reposync
