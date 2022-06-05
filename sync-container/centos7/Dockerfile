FROM docker.io/centos:7.9.2009

# Setup
COPY etc/yum/pluginconf.d/fastestmirror.conf /etc/yum/pluginconf.d/fastestmirror.conf
# RUN sed -i 's/^enabled=1/enabled=0/g' /etc/yum/pluginconf.d/fastestmirror.conf
# RUN sed -i '/^mirrorlist/s/^/#/g' /etc/yum.repos.d/*.repo
# RUN sed -i '/^baseurl/s/^#//g' /etc/yum.repos.d/*.repo
# RUN sed -i 's/mirror\.centos\.org/mirrors\.kernel\.org/g' /etc/yum.repos.d/*.repo

# Fedora EPEL, RPM Fusion, CentOS software collections
RUN yum install -y https://mirrors.rpmfusion.org/free/el/rpmfusion-free-release-7.noarch.rpm \
                   https://mirrors.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-7.noarch.rpm \
                   epel-release \
                   centos-release-scl centos-release-scl-rh

# ius.io
RUN yum install -y https://repo.ius.io/ius-release-el7.rpm

# Visual studio code
RUN rpm --import https://packages.microsoft.com/keys/microsoft.asc
RUN sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

# Docker
RUN rpm --import https://download.docker.com/linux/centos/gpg
RUN sh -c 'echo -e "[docker-ce]\nname=Docker-CE Repository\nbaseurl=https://download.docker.com/linux/centos/7/\$basearch/stable\nenabled=0\ngpgcheck=1\nkeepcache=1\ngpgkey=https://download.docker.com/linux/centos/gpg\n" > /etc/yum.repos.d/docker-ce.repo'

# Nvidia
RUN yum-config-manager --add-repo https://developer.download.nvidia.com/compute/cuda/repos/rhel7/x86_64/cuda-rhel7.repo

# Packages
RUN yum install -y yum-utils createrepo rsync nano
RUN yum clean all

ENTRYPOINT ["/bin/bash"]
