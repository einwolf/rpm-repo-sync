#!/bin/bash

rsync -rva --link-dest=../centos7 centos7-repos/ centos7/
