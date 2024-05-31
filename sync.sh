#!/bin/bash

dryRun="YES"
args="-ncav"
if [ "$#" -ge 1 ]; then
    if [ "$1" = "--force" ] || [ "$1" = "-f" ]; then
        dryRun="NO"
        args="-cav"
    fi
    if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
        echo "Usage: sync.sh [--force | -f] [--help | -h]"
        exit 1
    fi
fi
#echo "dryRun is ${dryRun}"

rsync ${args} \
      --exclude='tiledb_*tar.gz' \
      --exclude=.travis.yml \
      --exclude=.git \
      --exclude=.Rhistory \
      --exclude=.git \
      --exclude=.Rproj.user \
      --exclude=tiledb.Rcheck \
      --exclude=docs \
      --exclude=README.md \
      --exclude=_pkgdown.yml \
      --exclude=GPATH \
      --exclude=GRTAGS \
      --exclude=GTAGS \
      --exclude=local/tmp \
      --exclude=.github/workflows \
      --exclude=ex*\.R \
      --exclude=*~ \
      --exclude=local \
      --exclude=EnumerationsNotes.md \
      --exclude=cit.sh \
      ../tiledb-r/ .
