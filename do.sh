#! /usr/bin/bash

IMAGE="petalinux:2023.2"
PROJECTS="/media/data/peta"

case "$1" in
  build)
    podman build -t $IMAGE .
    ;;

  run)
    podman run \
      -ti \
      --rm \
      --userns=keep-id \
      -v "$PROJECTS":/home/vivado/projects:Z \
      $IMAGE
    ;;

  *)
    echo "unrecognized command: $1"
    ;;

esac
