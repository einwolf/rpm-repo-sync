#!/bin/bash

podman run --rm -it -v /srv/www/data1/os-repos/centos-repos/20220611-centos8s-repos:/data/centos8s-os-repos:Z localhost/centos8s-reposync
