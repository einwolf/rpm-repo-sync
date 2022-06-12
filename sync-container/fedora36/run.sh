#!/bin/bash

podman run --rm -it -v \
/srv/www/data1/os-repos/fedora-repos/20220611-fedora36-os-repos:/data/fedora-os-repos:Z \
localhost/fedora36-reposync
