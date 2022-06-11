FROM docker.io/centos:8.5.2105

# EPEL and rpm-fusion
RUN dnf install -y https://mirrors.rpmfusion.org/free/el/rpmfusion-free-release-8.noarch.rpm \
                   https://mirrors.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-8.noarch.rpm \
                   epel-release

# Packages
RUN dnf install -y 'dnf-command(reposync)' dnf-utils nano rsync

# Docker
#RUN rpm --import https://download.docker.com/linux/centos/gpg
#RUN sh -c 'echo -e "[docker-ce]\nname=Docker-CE Repository\nbaseurl=https://download.docker.com/linux/centos/8/\$basearch/stable\nenabled=0\ngpgcheck=1\nkeepcache=1\ngpgkey=https://download.docker.com/linux/centos/gpg\n" > /etc/yum.repos.d/docker-ce.repo'

# Nvidia
#RUN dnf config-manager --add-repo https://developer.download.nvidia.com/compute/cuda/repos/rhel8/x86_64/cuda-rhel8.repo

RUN dnf clean all

ENTRYPOINT ["/bin/bash"]
