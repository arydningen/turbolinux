#!/bin/bash

# Define an array of services to check
services=(
    "apache2"
    "nginx"
    "bind9"
    "isc-dhcp-server"
    "docker"
    "mysql"
    "postgresql"
    "sshd"
    "cron"
)

# Loop through each service and check if it's running
for service in "${services[@]}"; do
    if systemctl is-active --quiet "$service"; then
        echo "$service is running"
    elif service "$service" status &> /dev/null; then
        echo "$service is running"
    fi
done