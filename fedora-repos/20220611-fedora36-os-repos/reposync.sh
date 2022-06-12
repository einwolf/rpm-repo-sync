#!/bin/bash

dnf reposync --repo fedora -a x86_64,noarch --newest-only --delete --downloadcomps --download-metadata
dnf reposync --repo fedora-modular -a x86_64,noarch --newest-only --delete --downloadcomps --download-metadata

dnf reposync --repo fedora-cisco-openh264 -a x86_64,noarch --newest-only --delete --downloadcomps --download-metadata

dnf reposync --repo updates -a x86_64,noarch --newest-only --delete --downloadcomps --download-metadata
dnf reposync --repo updates-modular -a x86_64,noarch --newest-only --delete --downloadcomps --download-metadata

dnf reposync --repo rpmfusion-free -a x86_64,noarch --newest-only --delete --downloadcomps --download-metadata
dnf reposync --repo rpmfusion-free-updates -a x86_64,noarch --newest-only --delete --downloadcomps --download-metadata

dnf reposync --repo rpmfusion-nonfree -a x86_64,noarch --newest-only --delete --downloadcomps --download-metadata
dnf reposync --repo rpmfusion-nonfree-updates -a x86_64,noarch --newest-only --delete --downloadcomps --download-metadata
