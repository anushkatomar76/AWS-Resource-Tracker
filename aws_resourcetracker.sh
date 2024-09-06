#!/bin/bash


################################

# Author: Anushka
#
# Date: 6th-sep
#
# Version: v1
#
# This script will report the AWS resource usage
#
################################


set -x

#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users

#List S3 buckets
echo "Print list of s3 buckets"
aws s3 ls >> resourceTracker

#List EC2 instance
echo "Print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#List aws lambda
echo "Print list of lambda functions"
aws lambda list-functions >> resourceTracker

#List IAM Users
echo "Print list of IAM user"
aws iam list-users
