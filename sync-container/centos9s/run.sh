#!/bin/bash

podman run --rm -it -v /srv/www/data1/os-repos/centos-repos/20220611-centos9s-repos:/data/centos9s-os-repos:Z localhost/centos9s-reposync
