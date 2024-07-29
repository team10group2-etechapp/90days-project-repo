#!/bin/bash

read -p "Enter your github ssh repository: " github_repo
git clone git@github.com:team10group2-etechapp/${github_repo}.git
echo "Repository clone completed ..."
cd ${github_repo}/terraform-code/
read -p "Enter s3 bucket name: " bucket_name
aws s3 mb s3://${bucket_name} --region us-east-1
read -p "enter your bucket prefix: " dir
aws s3 cp . s3://${bucket_name}/$dir/ --recursive

# Count the number of prefixes in bucket created above
count=`aws s3 ls s3://${bucket_name}/ | wc -l`
echo "Total number of prefixe(s) = ${count}"
