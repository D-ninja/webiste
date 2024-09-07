#!/bin/bash
echo "Validating Nginx service..."

# Check if Nginx is running
systemctl status nginx | grep "active (running)"
if [ $? -ne 0 ]; then
  echo "Nginx is not running."
  exit 1
fi

# Check if the application is responding (modify URL as needed)
curl -I http://localhost | grep "200 OK"
if [ $? -ne 0 ]; then
  echo "Application is not responding correctly."
  exit 1
fi

echo "Nginx is running, and application responded successfully."

