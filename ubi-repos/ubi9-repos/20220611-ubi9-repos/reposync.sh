#!/bin/bash

dnf reposync --repo ubi-9-appstream -a x86_64,noarch --newest-only --delete --downloadcomps --download-metadata
dnf reposync --repo ubi-9-baseos -a x86_64,noarch --newest-only --delete --downloadcomps --download-metadata
dnf reposync --repo ubi-9-codeready-builder -a x86_64,noarch --newest-only --delete --downloadcomps --download-metadata
