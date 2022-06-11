#!/bin/bash

dnf reposync --repo appstream -a x86_64,noarch --newest-only --delete --downloadcomps --download-metadata
dnf reposync --repo baseos -a x86_64,noarch --newest-only --delete --downloadcomps --download-metadata
#dnf reposync --repo extras -a x86_64,noarch --newest-only --delete --downloadcomps --download-metadata
dnf reposync --repo extras-common -a x86_64,noarch --newest-only --delete --downloadcomps --download-metadata
dnf reposync --repo epel -a x86_64,noarch --newest-only --delete --downloadcomps --download-metadata
dnf reposync --repo epel-next -a x86_64,noarch --newest-only --delete --downloadcomps --download-metadata
dnf reposync --repo rpmfusion-free-updates -a x86_64,noarch --newest-only --delete --downloadcomps --download-metadata
dnf reposync --repo rpmfusion-nonfree-updates -a x86_64,noarch --newest-only --delete --downloadcomps --download-metadata
