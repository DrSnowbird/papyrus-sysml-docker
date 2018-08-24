# Eclipse SysML Modeling Docker
[![](https://images.microbadger.com/badges/image/openkbs/papyrus-sysml-docker.svg)](https://microbadger.com/images/openkbs/papyrus-sysml-docker "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/openkbs/papyrus-sysml-docker.svg)](https://microbadger.com/images/openkbs/papyrus-sysml-docker "Get your own version badge on microbadger.com")

* Eclipse-Oxygen + SysML Modeling + Java 8 JDK + Maven 3.5 + Python 3.5 + X11 (display GUI)

# License Agreement
By using this image, you agree the [Oracle Java JDK License](http://www.oracle.com/technetwork/java/javase/terms/license/index.html).
This image contains [Oracle JDK 8](http://www.oracle.com/technetwork/java/javase/downloads/index.html). You must accept the [Oracle Binary Code License Agreement for Java SE](http://www.oracle.com/technetwork/java/javase/terms/license/index.html) to use this image.

# Components
* Eclipse-Oxygen + SysML modeling Framework
* java version "1.8.0_181"
  Java(TM) SE Runtime Environment (build 1.8.0_181-b13)
  Java HotSpot(TM) 64-Bit Server VM (build 25.181-b13, mixed mode)
* Apache Maven 3.5.3
* Python 3.5.2
* X11 display desktop
* Other tools: git wget unzip vim python python-setuptools python-dev python-numpy 

# Run (recommended for easy-start)
Image is pulling from openkbs/papyrus-sysml-docker
```
./run.sh
```

# Build
```
./build.sh
```

## Build (Older Eclipse, e.g. Oxygen)
## -- Eclipse version: oxygen, photon, etc.: -- ##
Currently, we only verify the Oxygen Modeling for SysML in Eclipse. We will build Photon later when they are available.

# Configurations (Optional)
If you run "./run.sh" instead of "docker-compose up", you don't have to do anything as below.
* The container uses a default "/workspace" folder. 
* The script "./run.sh" will re-use or create the local folder in your $HOME directory with the path below to map into the docker's internal "/workspace" folder.
```
$HOME/data_docker/papyrus-sysml-docker/workspace
```
The above configuration will ensure all your projects created in the container's "/workspace" being "persistent" in your local folder, "$HOME/data_docker/papyrus-sysml-docker/workspace", for your repetitive restart docker container.

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

# Other possible Issues
You might see the warning message or something similar in the launching xterm console like below, you can just ignore it. I googles around and some blogs just suggested to ignore since the IDE still functional ok.
```
** (eclipse:1): WARNING **: Couldn't connect to accessibility bus: Failed to connect to socket /tmp/dbus-wrKH8o5rny: Connection refused

** (java:7): WARNING **: Couldn't connect to accessibility bus: Failed to connect to socket /tmp/dbus-wrKH8o5rny: Connection refused

```
