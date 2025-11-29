#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "Hello from ASG instance $(hostname)" > /var/www/html/index.html

