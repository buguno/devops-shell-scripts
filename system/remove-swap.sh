#!/bin/bash

# remove-swap.sh
# Safely disables and removes /swapfile and its fstab entry

set -e

if [ "$EUID" -ne 0 ]; then
    echo "❌ Please run as root (use sudo)"
    exit 1
fi

if swapon --summary | grep -q '/swapfile'; then
    echo "🔌 Disabling swap..."
    swapoff /swapfile
else
    echo "ℹ️ Swap already disabled or not in use."
fi

if [ -f /swapfile ]; then
    echo "🗑️ Removing /swapfile..."
    rm -f /swapfile
else
    echo "ℹ️ /swapfile does not exist."
fi

if grep -q "^/swapfile swap swap defaults 0 0" /etc/fstab; then
    echo "🧹 Cleaning up /etc/fstab..."
    sed -i '/^\/swapfile swap swap defaults 0 0/d' /etc/fstab
else
    echo "ℹ️ No /swapfile entry found in /etc/fstab."
fi

echo "✅ Swap removal complete."
