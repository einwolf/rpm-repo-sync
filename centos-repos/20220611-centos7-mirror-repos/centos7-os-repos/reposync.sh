#!/bin/bash

reposync -r base -n -d --downloadcomps --download-metadata
reposync -r updates -n -d --downloadcomps --download-metadata
reposync -r extras -n -d --downloadcomps --download-metadata
reposync -r centosplus -n -d --downloadcomps --download-metadata
