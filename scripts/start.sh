#!/bin/bash
echo "Starting Node.js app with PM2..."
cd /var/www/node-app

npm install -g pm2

pm2 stop node-app || true
pm2 start npm --name "node-app" -- start
