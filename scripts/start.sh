#!/bin/bash
echo "Starting Node.js app with PM2..."

# Go to app directory
cd /var/www/node-app || exit

# Install dependencies
npm install

# Install PM2 if not already installed
if ! command -v pm2 &> /dev/null; then
  npm install -g pm2
fi

# Stop existing app (if any) and start new one
pm2 stop node-app || true
pm2 start npm --name "node-app" -- start

# Save PM2 process list and configure to auto-start on reboot
pm2 save
pm2 startup systemd -u ec2-user --hp /home/ec2-user
