#!/bin/bash -xe
  sudo apt update
  sudo git clone https://github.com/felparejav/Dockerfile-Jenkins.git
  cd /jenkins
  sudo docker build