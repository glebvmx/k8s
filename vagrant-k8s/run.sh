#!/bin/bash
echo "your public key" >> /root/.ssh/authorized_keys
cp /vagrant/kube-flannel.yml /root/
apt update
apt-get install python --assume-yes
echo "10.10.10.100   master" > /etc/hosts
echo "10.10.10.101   worker1" >> /etc/hosts
echo "10.10.10.102   worker2" >> /etc/hosts
echo "10.10.10.103   worker3" >> /etc/hosts
