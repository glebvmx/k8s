#!/bin/bash
echo "I am deploy script."
echo "You are welcome!"
echo "[0] - exit"
echo "[1] - Vagrant up Vms"
echo "[2] - Vagrant destroy Vms"
#echo "[3] - Deploy microservices"

read Keypress

if [[ "Keypress" -eq 0 ]]
then
  echo "Bye"
  exit 0
fi

vagrant="vagrant"
case "$Keypress" in
  "1")
  "$vagrant" up
    echo 1;
  ;;
  "2")
  "$vagrant" destroy -f
   echo 2;
  ;;
#  "3")
#   cd ~/deploy
#   ./run.sh
#   echo 3;
#  ;;
esac
