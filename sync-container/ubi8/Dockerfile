FROM registry.access.redhat.com/ubi8/ubi:8.6-754

# Packages
RUN dnf install -y \
    https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm \
    https://mirrors.rpmfusion.org/free/el/rpmfusion-free-release-8.noarch.rpm \
    https://mirrors.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-8.noarch.rpm
RUN dnf install -y 'dnf-command(reposync)' nano rsync

# Docker
#RUN rpm --import https://download.docker.com/linux/centos/gpg
#RUN sh -c 'echo -"[docker-ce]\nname=Docker-CE Repository\nbaseurl=https://download.docker.com/linux/centos/8/$basearch/stable\nenabled=0\ngpgcheck=1\nkeepcache=1\ngpgkey=https://download.docker.com/linux/centos/gpg\n" > /etc/yum.repos.d/docker-ce.repo'

RUN dnf clean all

ENTRYPOINT ["/bin/bash"]
