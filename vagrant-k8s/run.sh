#!/bin/bash
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC2lB/xIP28Xr/myyQC9iPWZxKGt5xSrZ51RWbtKXZn0ZOtOo0ITXgvEgtSHZf5NID7+vDRHvWxGgcn2xGZMBBeB6VzaM/u9TXjWZPu6giI4FPYRMgCxPn/Nh3BiEHIlki0jd+NKWCp+cUVD50uzeQts7vBNw1XlppIqWueL/BRi0+aZHLhvLhxAI9jLrsYolEIhGyft5hHcQNRow9rbWPxLLBuCCYwh1dC/xoKfUVUsfktzsuwx7Da+0xTxIK3i3CDLa0r+GzrEOIjRkS0FuF1ucCg6axAncePuCLT3HeRxKXdt2jc7bh9gVfyQ/R61iaRFW2WTrP9ZNoMTeoCFGJp gleb@work" >> /root/.ssh/authorized_keys
cp /vagrant/kube-flannel.yml /root/
apt update
apt-get install python --assume-yes
echo "10.10.10.100   master" > /etc/hosts
echo "10.10.10.101   worker1" >> /etc/hosts
echo "10.10.10.102   worker2" >> /etc/hosts
echo "10.10.10.103   worker3" >> /etc/hosts
