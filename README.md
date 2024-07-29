# Team 10 - Group 2 - Etechapp Project

## Team members
  - Peter N
  - Princess H.
  - Basil
  - kiki Ngaka
  - Brenda Noundou
  
Project involved 3 sections

## Part 1: Questions on AWS Services and DevOps

Q1: What do you understand about Cloud computing?

Q2: What AWS services are you familiar with and describe how you made use of those services?
  a. Virtual Private Cloud (VPC)
  b. Elastic Compute Cloud (EC2)
  c. Simple Storage Service (S3): is an object storage service that enables you to store and retrieve data  
       as objects in buckets. Some of the ways we used this service was create a bucket, upload webpage files and configure the bucket for 

Q3: What is an IP address?
    A3: This is a set of numbers or letter that is assigned to a device connected to a network enabling it to communicate with other devices in the network (locally or over the internet). It serves 2 purposes: identifiation (to identify the device over the network) and location (helps to route data to it's destination)

Q4: what is the difference between an IAM USER and IAM ROLE?
    A4: An IAM user can be an individual or a service that needs to AWS recources, generally for long term usage while an IAM role is an identity with specific permissions that can be assumed by AWS entities, generally for long term usage. An IAM role can be assumed by an IAM user

Q5: Can you describe the components of an AWS VPC (Virtual Private Cloud)?
    a. Subnets => This is a sub-range of the VPC's IP address in which recources are placed. 2 types exist, public subnet(this is accessible from the internet) and private subnet (this is accessible only within the VPC)
    b. Route table => It's used to control traffic between subnets within a VPC
    c. Internet gateway => when attached to a VPC, allows resources in the public subnets to access the internet
    d. Security groups =>serves as an inbound and outbound firewall for resources within the VPC
    e. NAT gateway => enables communication from private subnets in a VPC to the internet while preventing the reverse communication
    f. VPC peering => enables communication between 2 VPC

Q6: Document step by step how you will start using git and github
  A6: git is a version control system that is used for source code change tracking by developers while github is a platform used for version control and collaboration using git. Git workflow include:
    - create a repository, by initializing a folder (by `git init` command) or cloning one from Github (using `git clone [ssh url]`)
    - checkout to a new branch (using `git checkout [branch]`)
    - Perform your code change/update as per the project
    - Move files from working area to staging area (using `git add .`)
    - move from staging to local area (using `git commit -m "[descriptive message]"`)
    - update remote repository (using `git push`)
  
  In Github, after updating the remote repository, we need to initiate a pull request from new branch to a stage branch to uat branch and finally to the main (or production) branch, each of these pull request goes through a review by 2 or more senior engineer before being approved.

Q7: document step by step how you will start using Terraform
  A7: Terraform is an open-source IaC (infrastructure as a code) tool used to provision multi-cloud infrastructure resources using  configuration files, API and provider plugins. Terraform workflow include:
    - Write configuration
    - initialize the project (using `terraform init`)
    - Validate configuration (using `terraform validate`)
    - Format the code (using `terraform fmt`)
    - plan changes (using `terraform plan`)
    - apply changes (using `terraform apply -auto-approve`)
    - To destroy infrastructure, use `terraform destroy -auto-approve`

## Part 2: Practicals

# Task: Using Terraform, set up an EC2 instance with Git and Jenkins installed on it.

Follow our github repository https://github.com/team10group2-etechapp/90days-project-repo to view the full code.

## Part 3: Scripting
Q1: Develop a shell script that will do the following tasks: