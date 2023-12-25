#!/bin/bash

#!/bin/bash

####################################
# Author: Souvik De
# Date: 25-12-2023
# version: v1
# This script will be report on aws resource usage
####################################

set -x

# AWS S3
#AWS EC2
#AWS Lambda
#AWS I AM Users

#List down s3 buckets
echo "print s3 bucket lists "
aws s3 ls > resourceTracker.txt

#List aws ec2 instances
echo "print ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' > ec2list.txt


#list down lambdas
echo "print all lambdas "
aws lambda list-functions >> resourceTracker.txt

#list aws I am users
echo "users lists "
aws iam list-users






