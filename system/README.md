# System Scripts

This directory contains various system administration and maintenance scripts. Below is a list of available scripts with their descriptions:

## Scripts

- [basic-security-audit.sh](./basic-security-audit.sh) - Performs a basic security audit of the system, checking firewall status, SSH configuration, available updates, open ports, and users with superuser privileges.

- [home-backup.sh](./home-backup.sh) - Creates a compressed backup of the home directory, excluding the backups folder and cache directory. The backup is timestamped and stored in a designated backup directory.

- [system-health-check.sh](./system-health-check.sh) - Monitors system health by checking CPU load, memory usage, and disk space. Alerts if any metric exceeds the defined threshold (80%).

- [create-swap.sh](./create-swap.sh) - Creates and configures a new swap file with the specified size (in MB or GB). The script handles the creation, permissions, and fstab configuration. Requires root privileges to execute.

- [remove-swap.sh](./remove-swap.sh) - Safely disables and removes the swap file and its corresponding entry in /etc/fstab. Requires root privileges to execute.

## Usage

Most scripts require root privileges to execute. Use `sudo` when running these scripts:

```bash
sudo ./script-name.sh
```

For scripts that require parameters (like create-swap.sh), follow the usage instructions provided in the script's help message. 
