odl_user_1011966:~/environment/terraform-aws-eks-workshop/src (main) $ history
    1  git
    2  clear
    3  docker
    4  clear
    5  git
    6  clear
    7  ec2 cli
    8  aws ec2
    9  ls
   10  clear
   11  aws ec2 run-instances                     --image-id ami-007855ac798b5175e          --count 1                                 --instance-type t2.micro                  --key-name kp-day-14                      --subnet-id subnet-039bddb34bb6a98e3      --security-group-ids sg-02c6819875fabc34a --tag-specifications 'ResourceType=instance,Tags=[{Key=webserver,Value=cli-image}]' 'ResourceType=volume,Tags=[{Key=lab,Value=day9}]' --user-data file://webphp.txt
   12  aws ec2 describe-instances --query "Reservations[*].Instances[*].{Instance:InstanceId}" --output table
   13  terraform 
   14  clear
   15  terraform --help
   16  clear
   17  git clone https://github.com/eacatalyst/terraform-aws-eks-workshop
   18  ls
   19  cd terraform-aws-eks-workshop/
   20  ls
   21  clear
   22  cd src/
   23  ls -l
   24  aws s3 mb s3://day-14-infra-state
   25  aws s3 ls
   26  clear
   27  ls
   28  clear
   29  ls
   30  pwd
   31  ls
   32  terraform init
   33  clear
   34  terraform validate
   35  terraform plan -out day-14-eks-infa.plan
   36  clear
   37   terraform apply "day-14-eks-infa.plan"
   38  clear
   39  history
