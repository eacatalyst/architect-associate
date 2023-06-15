1 - create VPC
2 - Create 2 Instances
4 - Create a security group for NFS (allow all traffic)
5 - Create nfs file system
5 - Manage Networking - remove security group
6 - Add NFS security group
7 - SSH into EC2 instances
8 - Make efs directory - mkdir efs
9 - moutng with nfs options 
sudo mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport fs-06ac5c726bef58fcc.efs.us-east-1.amazonaws.com:/ efs
