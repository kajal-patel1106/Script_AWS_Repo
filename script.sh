#!/bin/bash

# Update package list
echo "Updating packages..."
sudo apt update -y

# Install Apache2
echo "Installing Apache..."
sudo apt install apache2 -y

# Start Apache service
echo "Starting Apache service..."
sudo systemctl start apache2

# Enable Apache to start on boot
echo "Enabling Apache on boot..."
sudo systemctl enable apache2

# Check status
echo "Apache status:"
sudo systemctl status apache2

echo "Apache installation completed!"

rm /var/www/html/index.html