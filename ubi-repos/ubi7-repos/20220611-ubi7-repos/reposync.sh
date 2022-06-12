#!/bin/bash

reposync -r ubi-7 -n -d --downloadcomps --download-metadata
reposync -r ubi-7-rhah -n -d --downloadcomps --download-metadata
reposync -r ubi-7-server-extras-rpms -n -d --downloadcomps --download-metadata
reposync -r ubi-7-server-optional-rpms -n -d --downloadcomps --download-metadata
reposync -r ubi-server-rhscl-7-rpms -n -d --downloadcomps --download-metadata
