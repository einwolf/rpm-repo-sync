#!/bin/bash

rsync -rva --stats --progress --delete --link-dest=../20220611-ubi7-mirror-repos 20220611-ubi7-mirror-repos/ 20220611-ubi7-repos/
