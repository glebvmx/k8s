#!/bin/bash
clear
echo "I am deploy script."
echo "You are welcome!"
echo "[0] - exit"
echo "[1] - Install Docker Engine +  Kubernetes, Boostrap K8S Cluster, Join Worker nodes"
echo "[2] - Install Graphical Dashboard"


read Keypress
if [[ "Keypress" -eq 0 ]]
then
  echo "Bye"
  exit 0
fi
play="ansible-playbook"
case "$Keypress" in
  "1")
     "$play" -i inv.yml playbooks/up/k8s.yml
     "$play" -i inv.yml playbooks/up/initial.yml
     "$play" -i inv.yml playbooks/up/master.yml
     "$play" -i inv.yml playbooks/up/workers.yml
    echo 1;
  ;;
  "2")
#    "$play" -i inv.yml playbooks/up/bootstrap.yml
    echo 1;
  ;;


esac
