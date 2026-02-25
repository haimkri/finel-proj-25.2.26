#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Hello from Terraform EC2 Instance</h1>" > /var/www/html/index.html
echo "<h2>Environment: ${environment}</h2>" >> /var/www/html/index.html
echo "<h2>Instance: ${instance_name}</h2>" >> /var/www/html/index.html