#!/bin/bash
echo "AfterInstall: Installing Node.js, npm, and PM2..."

# Install Node.js (version 18 used here; adjust if needed)
curl -fsSL https://rpm.nodesource.com/setup_18.x | sudo bash -
sudo yum install -y nodejs

# Install PM2 globally
sudo npm install -g pm2

# Optional: Ensure application directory exists
mkdir -p /home/ec2-user/app
