 1 - build VPC
 2 - Provision IDE (Cloud9) - familiar with IDE for closing week
 3 - Provision DevOps Instance

 4 - Create IAM user storageadmin

aws configure --profile storageadmin

access-id
access-code

 5 - Create IAM user otheruser

aws configure --profile storageuser
access-id
access-code


aws ec2 describe-instances --filters Name=instance-state-name,Values=running --query 'Reservations[].Instances[*].{InstanceType: InstanceType, InstanceId: InstanceId, State: State.Name}' --output table
