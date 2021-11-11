# petalinux-docker
Forked from [z4yx/petalinux-docker](https://github.com/z4yx/petalinux-docker)

## Usage
Copy petalinux-v2021.2-final-installer.run file to this folder. Then run:
`docker build --build-arg PETA_VERSION=2021.2 --build-arg PETA_RUN_FILE=petalinux-v2021.2-final-installer.run -t petalinux:2021.2 .`

After installation, launch petalinux with:
`docker run -ti --rm -e DISPLAY=$DISPLAY --net="host" -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME/.Xauthority:/home/vivado/.Xauthority -v $HOME/projects:/home/vivado/projects petalinux:2021.2 /bin/bash`

