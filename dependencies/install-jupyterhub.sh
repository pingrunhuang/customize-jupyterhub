#!/bin/sh

# cd jupyterhub dir
conda install jupyterhub-0.7.2-py36_0.tar.bz2

# install docker
sudo yum install docker-ce-17.03.0.ce-1.el7.centos.x86_64.rpm

sudo systemctl start docker



# install nodejs
sudo tar --strip-components 1 -xzvf node-v6.11.2-linux-x64.tar.gz -C /usr/local


# jupyterhub dependencies
conda install pamela-0.2.1.tar.gz

cd configurable-http-proxy
npm install -g

# install dockerspawner
conda install escapism-0.0.2-py_0.tar.bz2
cd dockerspawner
python setup.py install
