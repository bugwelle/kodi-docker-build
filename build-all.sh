#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

docker build -t "bugwelle-kodi-build:ubuntu-16.04" -f Dockerfile.build-ubuntu-16.04 .
docker build -t "bugwelle-kodi-build:ubuntu-18.04" -f Dockerfile.build-ubuntu-18.04 .
docker build -t "bugwelle-kodi-build:ubuntu-20.04" -f Dockerfile.build-ubuntu-20.04 .
docker build -t "bugwelle-kodi-build:ubuntu-20.10" -f Dockerfile.build-ubuntu-20.10 .

docker build -t "bugwelle-kodi-build:opensuse-tumbleweed" -f Dockerfile.build-opensuse-tumbleweed .
docker build -t "bugwelle-kodi-build:opensuse-leap-15"    -f Dockerfile.build-opensuse-leap-15 .

docker build -t "bugwelle-kodi-build:fedora-26"      -f Dockerfile.build-fedora-26 .
docker build -t "bugwelle-kodi-build:fedora-28"      -f Dockerfile.build-fedora-28 .
docker build -t "bugwelle-kodi-build:fedora-29"      -f Dockerfile.build-fedora-29 .
docker build -t "bugwelle-kodi-build:fedora-latest"  -f Dockerfile.build-fedora-latest .
