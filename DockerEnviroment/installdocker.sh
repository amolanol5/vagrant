#!/bin/bash
#instalation docker in vm

yum update -y
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install docker-ce docker-ce-cli containerd.io -y

groupadd docker
usermod -aG docker $USER

newgrp docker
systemctl start docker
docker run hello-world
newgrp docker