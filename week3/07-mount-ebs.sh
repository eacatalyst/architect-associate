lsblk

sudo file -s /dev/xvdf

sudo lsblk -f

sudo mkfs -t xfs /dev/xvdf

sudo yum install xfsprogs

sudo mkdir /data

sudo mount /dev/xvdf /data
