# Papyrus Eclipse UML/SysML Modeling Docker
[![](https://images.microbadger.com/badges/image/openkbs/papyrus-sysml-docker.svg)](https://microbadger.com/images/openkbs/papyrus-sysml-docker "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/openkbs/papyrus-sysml-docker.svg)](https://microbadger.com/images/openkbs/papyrus-sysml-docker "Get your own version badge on microbadger.com")

* Papyrus UML/SysML Modeling + OpenJDK Java 11 + Maven 3.5 + Python 3 + Node/NPM + Yarn + X11 (display GUI)

# Components
* Papyrus SysML modeling Framework
* OpenJDK Java 11
* Apache Maven 3
* Python 3
* Node 16
* X11 display desktop
* Other tools: git wget unzip vim python python-setuptools python-dev python-numpy 

# Run (recommended for easy-start)
Image from openkbs/papyrus-sysml-docker
```
./run.sh
```

# Build
If you want your own local build image, do this:
```
./build.sh
```

# Configurations
Change the config file '.env'
```
...
#VOLUMES_LIST=".eclipse eclipse-workspace"
...
```

# Other docker-based IDE
* [openkbs/papyrus-sysml-docker](https://hub.docker.com/r/openkbs/papyrus-sysml-docker/)
* [openkbs/eclipse-photon-docker](https://hub.docker.com/r/openkbs/eclipse-photon-docker/)
* [openkbs/netbeans](https://hub.docker.com/r/openkbs/netbeans/)
* [openkbs/scala-ide-docker](https://hub.docker.com/r/openkbs/scala-ide-docker/)
* [openkbs/pycharm-docker](https://hub.docker.com/r/openkbs/pycharm-docker/)
* [openkbs/webstorm-docker](https://hub.docker.com/r/openkbs/webstorm-docker/)
* [openkbs/intellj-docker](https://hub.docker.com/r/openkbs/intellij-docker/)

# Display X11 Issue

More resource in X11 display of Eclipse on your host machine's OS, please see
* [X11 Display problem](https://askubuntu.com/questions/871092/failed-to-connect-to-mir-failed-to-connect-to-server-socket-no-such-file-or-di)
* [X11 Display with Xhost](http://www.ethicalhackx.com/fix-gtk-warning-cannot-open-display/)

