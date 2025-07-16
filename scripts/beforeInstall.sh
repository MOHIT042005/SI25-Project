#!/bin/bash
echo "BeforeInstall: Cleaning up old deployment..."

rm -rf /var/www/node-app
mkdir -p /var/www/node-app
