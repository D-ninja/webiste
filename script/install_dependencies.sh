#!/bin/bash
# Install dependencies if needed
echo "Installing dependencies..."
apt-get update
sudo apt -y install unzip curl
apt-get install -y nginx
echo "Dependencies installed."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
