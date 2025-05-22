#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo "Please run as root (use sudo)"
    exit 1
fi

echo "===== Basic Security Audit ====="

# 1. Check firewall status
echo -e "\n** Firewall Status **"
ufw status || iptables -L

# 2. Check SSH configuration (PermitRootLogin and PasswordAuthentication)
echo -e "\n** SSH Configuration Check **"
grep -E "^PermitRootLogin|^PasswordAuthentication" /etc/ssh/sshd_config

# 3. Check for available package updates
echo -e "\n** Package Update Check **"
apt update && apt list - upgradable

# 4. Check for open listening ports
echo -e "\n** Open Ports **"
ss -tuln
# 5. Check user accounts with superuser privileges
echo -e "\n** Users with Superuser Privileges **"
getent group sudo

echo "===== Security Audit Complete ====="
