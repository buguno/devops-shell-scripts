#!/bin/bash

# create-swap.sh
# Usage: sudo ./create-swap.sh <SIZE> (e.g., 512M or 2G)

set -e

if [ "$EUID" -ne 0 ]; then
    echo "❌ Please run as root (use sudo)"
    exit 1
fi

if [ -z "$1" ]; then
    echo "❌ You must specify the swap size (e.g., 512M or 2G)"
    echo "Usage: sudo $0 <SIZE>"
    exit 1
fi

SIZE_INPUT="$1"
UNIT="${SIZE_INPUT: -1}"
SIZE_NUM="${SIZE_INPUT::-1}"

# Validate unit
if [[ "$UNIT" != "M" && "$UNIT" != "G" ]]; then
    echo "❌ Invalid size unit. Use M for MB or G for GB."
    exit 1
fi

# Convert to MB
if [ "$UNIT" == "G" ]; then
    SIZE_MB=$((SIZE_NUM * 1024))
else
    SIZE_MB=$SIZE_NUM
fi

BLOCK_SIZE_MB=128
COUNT=$((SIZE_MB / BLOCK_SIZE_MB))

echo "📦 Creating swap file of size: $SIZE_INPUT ($SIZE_MB MB)..."

dd if=/dev/zero of=/swapfile bs=${BLOCK_SIZE_MB}M count=$COUNT status=progress

# To update the read and write permissions for the swap file
chmod 600 /swapfile

# To set up a Linux swap space
mkswap /swapfile

# To add the swap file to swap space and make the swap file available for
# immediate use
swapon /swapfile

echo "✅ Swap created and activated:"
# To verify that the procedure was successful
swapon -s

# Add to fstab if not already present
if ! grep -q "^/swapfile" /etc/fstab; then
    echo "/swapfile swap swap defaults 0 0" >> /etc/fstab
    echo "📌 Entry added to /etc/fstab"
else
    echo "ℹ️ /swapfile already present in /etc/fstab"
fi
