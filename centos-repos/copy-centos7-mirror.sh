#!/bin/bash

rsync -rva --stats --progress --delete --link-dest=../20220611-centos7-mirror-repos 20220611-centos7-mirror-repos/ 20220611-centos7-repos/
