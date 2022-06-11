#!/bin/bash

createrepo --update --groupfile comps.xml base
createrepo --update updates
createrepo --update extras
createrepo --update centosplus

