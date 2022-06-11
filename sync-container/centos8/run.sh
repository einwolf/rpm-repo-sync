#!/bin/bash

podman run --rm -it -v /data/os-repos/centos-repos/20210808-centos8-repos:/data/centos8-os-repos:Z localhost/centos8-reposync

