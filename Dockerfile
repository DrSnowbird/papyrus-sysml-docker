FROM openkbs/jdk11-mvn-py3-x11

MAINTAINER DrSnowbird "DrSnowbird@openkbs.org"
     
## -------------------------------------------------------------------------------
## ---- USER_NAME is defined in parent image: openkbs/jdk-mvn-py3-x11 already ----
## -------------------------------------------------------------------------------
#ENV USER_NAME=${USER_NAME:-developer}
#ENV HOME=/home/${USER_NAME}
#ENV ECLIPSE_WORKSPACE=${HOME}/eclipse-workspace

ARG BUILD_YEAR_MONTH=2020-12
ARG BUILD_VERSION=5.0.0
## ----------------------------------------------------------------------------------- ##
## ----------------------------------------------------------------------------------- ##
## ----------- Don't change below unless Eclipse download system change -------------- ##
## ----------------------------------------------------------------------------------- ##
## ----------------------------------------------------------------------------------- ##

#ARG ECLIPSE_DOWNLOAD_URL=https://mirrors.xmission.com/eclipse/modeling/mdt/papyrus/rcp/2020-12/5.0.0/papyrus-2020-12-5.0.0-linux64.tar.gz
ARG ECLIPSE_DOWNLOAD_URL=https://mirrors.xmission.com/eclipse/modeling/mdt/papyrus/rcp/${BUILD_YEAR_MONTH}/${BUILD_VERSION}/papyrus-${BUILD_YEAR_MONTH}-${BUILD_VERSION}-linux64.tar.gz

WORKDIR ${HOME}
RUN sudo wget -c ${ECLIPSE_DOWNLOAD_URL} && \
    sudo tar xvf $(basename ${ECLIPSE_DOWNLOAD_URL}) && \
    sudo rm $(basename ${ECLIPSE_DOWNLOAD_URL})

###########################################
#### ---- entrypoint script setup ---- ####
###########################################
COPY docker-entrypoint.sh /docker-entrypoint.sh
#RUN chmod +x /docker-entrypoint.sh

##################################
#### Set up user environments ####
##################################
#VOLUME ${ECLIPSE_WORKSPACE}
#VOLUME ${HOME}/.eclipse 

#RUN mkdir -p ${HOME}/.eclipse ${ECLIPSE_WORKSPACE} && \
#    sudo chown -R ${USER}:${USER} ${HOME} 
    
USER ${USER}
WORKDIR ${HOME}

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/bin/bash", "-c", "${HOME}/Papyrus/papyrus"]

