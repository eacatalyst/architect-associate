aws ec2 run-instances                     \
--image-id ami-007855ac798b5175e          \
--count 1                                 \
--instance-type t2.micro                  \
--key-name kp-day9-cf                     \
--subnet-id subnet-0b67f11a3af8576a1      \
--security-group-ids sg-01ca1561cf5bf16be \
--tag-specifications 'ResourceType=instance,Tags=[{Key=webserver,Value=cli-image}]' 'ResourceType=volume,Tags=[{Key=lab,Value=day9}]' \
--user-data file://webphp.txt



#### Content for User Data - create file webphp.txt

#!/bin/bash
echo "updating system">>/tmp/user-data-run.log
apt update -y
echo "Installing package">>/tmp/user-data-run.log
apt install -y apache2 php
echo "Downloading code">>/tmp/user-data-run.log
cd/tmp
git clone https://github.com/nindate/web-pages.git
echo "Deploying code">>/tmp/user-data-run.log
mv web-pages/simple-site/* /var/www/html/
rm/var/www/html/index.html
echo "system ready to use">>/tmp/user-data-run.log

# Delete Instances
aws ec2 terminate-instances --instance-ids <instance-id>

aws ec2 describe-instances --query "Reservations[*].Instances[*].{Instance:InstanceId}" --output table

aws ec2 describe-instances --query "Reservations[*].Instances[*].{Instance:InstanceId}" --output table --region us-east-2
