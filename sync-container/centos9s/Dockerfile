FROM quay.io/centos/centos:stream9

# EPEL and rpm-fusion
RUN dnf install -y 'dnf-command(config-manager)'
RUN dnf config-manager --set-enable crb
RUN dnf install -y epel-release epel-next-release
RUN dnf install -y https://mirrors.rpmfusion.org/free/el/rpmfusion-free-release-9.noarch.rpm \
                   https://mirrors.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-9.noarch.rpm

# Packages
RUN dnf install -y 'dnf-command(reposync)' dnf-utils nano rsync

# Docker
#RUN rpm --import https://download.docker.com/linux/centos/gpg
#RUN sh -c 'echo -e "[docker-ce]\nname=Docker-CE Repository\nbaseurl=https://download.docker.com/linux/centos/8/\$basearch/stable\nenabled=0\ngpgcheck=1\nkeepcache=1\ngpgkey=https://download.docker.com/linux/centos/gpg\n" > /etc/yum.repos.d/docker-ce.repo'
RUN dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Nvidia
#RUN dnf config-manager --add-repo https://developer.download.nvidia.com/compute/cuda/repos/rhel8/x86_64/cuda-rhel8.repo

RUN dnf clean all

ENTRYPOINT ["/bin/bash"]
