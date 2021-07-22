FROM openkbs/jdk11-mvn-py3-x11

MAINTAINER DrSnowbird "DrSnowbird@openkbs.org"
     
## -------------------------------------------------------------------------------
## ---- USER_NAME is defined in parent image: openkbs/jdk-mvn-py3-x11 already ----
## -------------------------------------------------------------------------------
ENV USER_NAME=${USER_NAME:-developer}
ENV HOME=/home/${USER_NAME}
ENV ECLIPSE_WORKSPACE=${HOME}/eclipse-workspace


## ----------------------------------------------------------------------------------- ##
## ----------------------------------------------------------------------------------- ##
## ----------- Don't change below unless Eclipse download system change -------------- ##
## ----------------------------------------------------------------------------------- ##
## ----------------------------------------------------------------------------------- ##

ARG ECLIPSE_DOWNLOAD_URL=https://mirrors.xmission.com/eclipse/modeling/mdt/papyrus/rcp/2020-12/5.0.0/papyrus-2020-12-5.0.0-linux64.tar.gz

WORKDIR /opt
RUN sudo wget -c ${ECLIPSE_DOWNLOAD_URL} && \
    sudo tar xvf $(basename ${ECLIPSE_DOWNLOAD_URL}) && \
    sudo rm $(basename ${ECLIPSE_DOWNLOAD_URL})

#################################
#### Install Eclipse Plugins ####
#################################
#http://download.eclipse.org/modeling/mdt/papyrus/updates/releases/oxygen

#Install ATL, Accelo and Papyrus Plugins
#RUN cd /opt/eclipse && \
#    ./eclipse -application org.eclipse.equinox.p2.director -repository http://download.eclipse.org/releases/${ECLIPSE_VERSION}/ -installIU org.eclipse.acceleo.feature.group -nosplash && \
#    ./eclipse -application org.eclipse.equinox.p2.director -repository http://download.eclipse.org/releases/${ECLIPSE_VERSION}/ -installIU org.eclipse.m2m.atl.feature.group -nosplash && \
#    ./eclipse -application org.eclipse.equinox.p2.director -repository http://download.eclipse.org/modeling/mdt/papyrus/updates/releases/${ECLIPSE_VERSION},http://download.eclipse.org/modeling/mdt/papyrus/components/bpmn/${ECLIPSE_VERSION},http://download.eclipse.org/modeling/mdt/papyrus/components/sysml14/${ECLIPSE_VERSION},http://download.eclipse.org/releases/${ECLIPSE_VERSION} -installIU org.eclipse.papyrus.sdk.feature.feature.group,org.eclipse.papyrus.toolsmiths.feature.feature.group,org.eclipse.papyrus.sysml14.feature.feature.group,org.eclipse.papyrus.bpmn.feature.feature.group -nosplash

##################################
#### Set up user environments ####
##################################
VOLUME ${ECLIPSE_WORKSPACE}
VOLUME ${HOME}/.eclipse 

RUN mkdir -p ${HOME}/.eclipse ${ECLIPSE_WORKSPACE} &&\
    sudo chown -R ${USER_NAME}:${USER_NAME} ${ECLIPSE_WORKSPACE} ${HOME}/.eclipse
    
USER ${USER_NAME}
WORKDIR ${ECLIPSE_WORKSPACE}
CMD ["/opt/Papyrus/papyrus"]

