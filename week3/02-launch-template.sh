Creating a Launch Template - Launch Templates
 - Versioned
 - Deeper Config
 - Pricing Models (spot/on-demand)
 - Associate with Licence Manager

1 - Enable Auto Assign public Subnet

2 - Create Launch Template

3 - Tag Lunch Template

Ubuntu - AMI

 #!/bin/bash
echo "updating system">>/tmp/user-data-run.log
apt update -y
echo "Installing package">>/tmp/user-data-run.log
apt install -y apache2 php
echo "Downloading code">>/tmp/user-data-run.log
cd/tmp
git clone https//github.com/nindate/web-pages.git
echo "Deploying code">>/tmp/user-data-run.log
mv web-pages/simple-site/* /var/www/html/
rm/var/www/html/index.html
echo "system ready to use">>/tmp/user-data-run.log

4 - Validate HTTP through browser

5 - Manually Scale Up

6 - Mannually Scale Down

7 - Validate EC2 Console
