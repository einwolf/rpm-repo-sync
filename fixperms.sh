#!/bin/bash

echo "Restorecon"
restorecon -FR centos-repos fedora-repos

echo "Remove facls"
find centos-repos fedora-repos -exec setfacl -b {} \+

echo "Set directory facls"
find centos-repos fedora-repos -type d -exec setfacl -m "d:g:bluefield:rwx" {} \+

echo "Set file facls"
find centos-repos fedora-repos -type f -exec setfacl -m "g:bluefield:rwx" {} \+
