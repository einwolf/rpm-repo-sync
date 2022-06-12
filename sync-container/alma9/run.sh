#!/bin/bash

podman run --rm -it \
-v /srv/www/data1/os-repos/alma-repos/20220612-alma9-repos:/data/alma9-os-repos:Z \
localhost/centos9s-reposync
