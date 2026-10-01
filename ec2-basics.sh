#!/bin/bash
########
# Use this in user data to install and configure a webserver while launching the EC2 instance
########

# Update the system packages
yum update -y

# Install Apache Web Server
yum install -y httpd

# Start Apache
systemctl start httpd

# Enable Apache to start on system boot
systemctl enable httpd

# Create the Hello World webpage
echo "<h1>Hello World from $(hostname -f) </h1>" > /var/www/html/index.html
