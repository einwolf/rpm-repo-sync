FROM registry.access.redhat.com/ubi7/ubi:7.9-712

# Setup
#COPY etc/yum/pluginconf.d/fastestmirror.conf /etc/yum/pluginconf.d/fastestmirror.conf

# Fedora EPEL, RPM Fusion, CentOS software collections
# RUN yum install -y \
# https://mirrors.rpmfusion.org/free/el/rpmfusion-free-release-7.noarch.rpm \
# https://mirrors.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-7.noarch.rpm \
# https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
# centos-release-scl centos-release-scl-rh

# ius.io
#RUN yum install -y https://repo.ius.io/ius-release-el7.rpm

# Visual studio code
#RUN rpm --import https://packages.microsoft.com/keys/microsoft.asc
#RUN sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

# Docker
#RUN rpm --import https://download.docker.com/linux/rhel/gpg
#RUN sh -c 'echo -e "[docker-ce]\nname=Docker-CE Repository\nbaseurl=https://download.docker.com/linux/rhel/7/\$basearch/stable\nenabled=0\ngpgcheck=1\nkeepcache=1\ngpgkey=https://download.docker.com/linux/centos/gpg\n" > /etc/yum.repos.d/docker-ce.repo'

# Packages
RUN yum install -y yum-utils createrepo rsync nano

# UBI 7 doesn't have createrepo so use Centos's.
RUN yum install -y \
https://mirrors.edge.kernel.org/centos/7/os/x86_64/Packages/deltarpm-3.6-3.el7.x86_64.rpm \
https://mirrors.edge.kernel.org/centos/7/os/x86_64/Packages/python-deltarpm-3.6-3.el7.x86_64.rpm \
https://mirrors.edge.kernel.org/centos/7/os/x86_64/Packages/createrepo-0.9.9-28.el7.noarch.rpm

RUN yum clean all

ENTRYPOINT ["/bin/bash"]
