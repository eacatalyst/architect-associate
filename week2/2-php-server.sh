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
