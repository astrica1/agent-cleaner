#!/bin/bash

THRESHOLD=70
DISK_USAGE=$(df -h --output=pcent / | awk 'NR==2 {gsub("%",""); print $1}')

echo "Current disk usage: $DISK_USAGE"

if [ "$DISK_USAGE" -gt "$THRESHOLD" ]; then
    echo "Disk usage is Above $THRESHOLD%."
    sudo docker system prune -a -f
    echo "Space freed successfully."
else
    echo "Disk usage is Below $THRESHOLD%."
fi
