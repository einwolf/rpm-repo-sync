#!/bin/bash

createrepo --update --groupfile comps.xml ubi-7
createrepo --update ubi-7-rhah
createrepo --update ubi-7-server-extras-rpms
createrepo --update ubi-7-server-optional-rpms
createrepo --update ubi-server-rhscl-7-rpms
