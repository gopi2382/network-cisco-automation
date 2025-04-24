FROM jenkins/jenkins:lts

USER root

RUN apt-get update && \
    apt-get install -y python3-pip sshpass && \
    pip3 install --break-system-packages ansible paramiko

USER jenkins
