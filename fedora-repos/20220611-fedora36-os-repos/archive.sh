#!/bin/bash

DATE=`date +%Y%m%d`

7za a -v1G ${DATE}_fedora.7z fedora
7za a ${DATE}_fedora-modular.7z fedora-modular

7za a -v1G ${DATE}_updates.7z updates
7za a ${DATE}_updates-modular.7z updates-modular

7za a ${DATE}_rpm-fusion-free.7z rpm-fusion-free
7za a ${DATE}_rpm-fusion-free-updates.7z rpm-fusion-free-updates

7za a ${DATE}_rpm-fusion-nonfree.7z rpm-fusion-nonfree
7za a ${DATE}_rpm-fusion-nonfree-updates.7z rpm-fusion-nonfree-updates
