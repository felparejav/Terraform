#!/bin/bash -xe
sudo yum install https://repo.saltstack.com/yum/redhat/salt-repo-latest.el7.noarch.rpm -y;
sudo yum clean expire-cache;
sudo yum install salt-master -y;
sudo yum install salt-minion -y;
sudo yum install salt-ssh -y;
sudo yum install salt-api -y;
sudo yum install git -y;
sudo echo "master: 192.168.5.20" | sudo tee /etc/salt/minion;
sudo echo "interface: 192.168.5.20" | sudo tee /etc/salt/master;
sudo mkdir /srv/formula;
cd /srv/formula;
sudo git clone https://github.com/saltstack-formulas/jenkins-formula.git;
cd /srv;
sudo git clone https://github.com/felparejav/salt.git;
sudo git clone https://github.com/felparejav/pillar.git;
sudo systemctl restart salt-minion;
sudo systemctl restart salt-master;