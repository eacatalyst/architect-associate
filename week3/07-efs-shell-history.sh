ec2-user@ip-10-0-38-221 ~]$ df
Filesystem                                                1K-blocks    Used        Available Use% Mounted on
devtmpfs                                                       4096       0             4096   0% /dev
tmpfs                                                       1001648       0          1001648   0% /dev/shm
tmpfs                                                        400660    5428           395232   2% /run
/dev/xvda1                                                  8310764 1545664          6765100  19% /
tmpfs                                                       1001652       0          1001652   0% /tmp
tmpfs                                                        200328       0           200328   0% /run/user/1000
fs-0aac0e8ef9b6f7aa4.efs.us-east-1.amazonaws.com:/ 9007199254739968       0 900[ec2-user@ip-10-0-38-221 ~]$ 
writing from machine 2
[ec2-user@ip-10-0-38-221 efs]$ history
    1  clear
    2  ls
    3  clear
    4  mkdir efs
    5  ls
    6  sudo mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport fs-0aac0e8ef9b6f7aa4.efs.us-east-1.amazonaws.com:/ efs
    7  ls
    8  cd efs/
    9  ls
   10  cd ..
   11  clear
   12  lsblk
   13  df -u
   14  df
   15  clear
   16  df
   17  lsblk
   18  df
   19  clear
   20  cd efs/
   21  ls
   22  echo 'create from app server 1' > server1.txt
   23  sudo echo 'create from app server 1' > server1.txt
   24  cd ..
   25  ls
   26  sudo chmod 777 efs
   27  sudo echo 'create from app server 1' > server1.txt
   28  cd efs/
   29  sudo echo 'create from app server 1' > server1.txt
   30  ls
   31  pwd
   32  ls
   33  ls -l
   34  clear
   35  ls -l
   36  sudo vi server2.txt 
   37  lsblk
   38  clear
   39  history
