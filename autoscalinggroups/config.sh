#!/bin/bash -xe
sudo yum install https://repo.saltstack.com/yum/redhat/salt-repo-latest.el7.noarch.rpm -y;
sudo yum clean expire-cache;
sudo yum install salt-minion -y;
sudo yum install salt-ssh -y;
sudo yum install salt-api -y;
sudo systemctl restart salt-minion;