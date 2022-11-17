# petalinux-docker
Forked from [z4yx/petalinux-docker](https://github.com/z4yx/petalinux-docker)

## Usage
Copy petalinux-v2022.2-10141622-installer.run file to this folder. Then run:
```
docker build --build-arg PETA_VERSION=2022.2 --build-arg PETA_RUN_FILE=petalinux-v2022.2-10141622-installer.run -t petalinux:2022.2 .
```

After installation, launch petalinux with:
```
docker run -ti --rm -e DISPLAY=$DISPLAY --net="host" -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME/.Xauthority:/home/vivado/.Xauthority -v $HOME/projects:/home/vivado/projects petalinux:2021.2 /bin/bash
```
Replace `$HOME/projects` with the path of the petalinux projects on the host.
