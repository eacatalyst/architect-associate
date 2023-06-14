Creating a Launch Configuration

1 - Go to EC2 Dashboard
2 - Select Lauch Configuration
3 - Expand Advanced - put script

#!/bin/bash
yum update -y
yum install httpd -y
cd /var/www/html
echo "Installed Apache using User Data" > index.html
service httpd start
chkconfig httpd on

AMI: ami-00c39f71452c08778

4 - Ensure assign public IP during create launch configuration

5 - Security Group in Launch Config must match - ASG

6 - Add Tags 
