FROM docker.io/fedora:36

RUN dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-36.noarch.rpm \
                   https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-36.noarch.rpm
RUN dnf install -y 'dnf-command(reposync)' dnf-utils nano rsync

# Nvidia cuda
RUN dnf config-manager --add-repo https://developer.download.nvidia.com/compute/cuda/repos/fedora35/x86_64/cuda-fedora35.repo

RUN dnf clean all

ENTRYPOINT ["/bin/bash"]
