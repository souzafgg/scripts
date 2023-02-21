#!/bin/bash
nomes=("pc" "pc" "pc" "pc")
ips=("192.168.0.108" "192.168.0.109" "192.168.0.110" "192.168.0.102")

lenghtn=${#nomes[@]}

for (( i = 0; i < ${lenghtn}; i++));
do
sshpass -p "123" ssh-copy-id -f -i /home/ubuntu/.ssh/ansible_key.pub ${nomes[$i]}@${ips[$i]}
done
