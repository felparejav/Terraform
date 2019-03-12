#!/bin/bash -xe
sudo yum install https://repo.saltstack.com/yum/redhat/salt-repo-latest.el7.noarch.rpm -y;
sudo yum clean expire-cache;
sudo yum install salt-master -y;
sudo yum install salt-minion -y;
sudo yum install salt-ssh -y;
sudo yum install salt-api -y;
sudo yum install git -y;
sudo echo "master: 192.168.5.20" >> /etc/salt/minion;
sudo echo "file_roots:" >> sudo /etc/salt/master;
sudo echo " base:" >> sudo /etc/salt/master;
sudo echo "     - /srv/salt" >> sudo /etc/salt/master;
sudo echo "     - /srv/formulas/jenkins-formula" >> sudo /etc/salt/master;
sudo systemctl restart salt-minion;
sudo systemctl restart salt-master;
sudo mkdir /srv/salt;