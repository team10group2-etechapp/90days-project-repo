#!/bin/bash

read -p "Enter your github ssh repository: " github_repo
git clone $github_repo
echo "Repository clone completed ..."
read -p "Enter s3 bucket name: " bucket_name
aws s3 mb s3://${bucket_name} --region us-east-1
read -p "enter your bucket prefix: " dir
aws s3 sync terraform-code s3://${s3-bucket-name}/$dir/