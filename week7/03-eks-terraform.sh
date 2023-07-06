


1 - Clone repo - https://github.com/eacatalyst/terraform-aws-eks-workshop
2 - Create bucket for tf-state
3 - Create Cloud-9 IDE
4 - Update Credentials (Provider - Section)
5 - Terraform plan -out eks-infra.plan
6 - Add Credentials to user
7 - Update version to 1.26



7 - Change region in variables


# Register Cluster


https://repost.aws/knowledge-center/eks-cluster-connection

aws --version
aws sts get-caller-identity
aws eks --region example_region update-kubeconfig --name cluster_name


# Interact with the cluster

kubectl 

# Register Cluster


https://repost.aws/knowledge-center/eks-cluster-connection

aws --version
aws sts get-caller-identity
aws eks --region example_region update-kubeconfig --name cluster_name



provider "aws" {
  region = var.region
  access_key="put you key here"
  secret_key="put you key here"
  
  # other options for authentication
}



