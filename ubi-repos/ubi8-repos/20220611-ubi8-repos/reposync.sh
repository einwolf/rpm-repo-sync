#!/bin/bash

dnf reposync --repo ubi-8-appstream -a x86_64,noarch --newest-only --delete --downloadcomps --download-metadata
dnf reposync --repo ubi-8-baseos -a x86_64,noarch --newest-only --delete --downloadcomps --download-metadata
dnf reposync --repo ubi-8-codeready-builder -a x86_64,noarch --newest-only --delete --downloadcomps --download-metadata
