#! /bin/bash

sudo apt install -y net-tools > /dev/null 2>&1
os_info=$(uname -a)
bash_users=$(cat /etc/passwd | grep "bash")
ports=$(sudo netstat -tulpn | grep LISTEN | awk '{print $4}' | sed 's/.*:/Listen:/' | sort | uniq)

echo "=================================[Os info]================================="
echo $os_info
echo "================================[Users list]================================"
echo $bash_users
echo "==============================[Listened ports]=============================="
echo $ports
echo "============================================================================"
