
**Overview**

This Terraform script automates the deployment of an EC2 instance inside a VPC on AWS. It sets up necessary routing and deploys both S3 and DynamoDB for state locking to facilitate Terraform operations.

**Features**

- EC2 Instance: Creates an EC2 instance inside a VPC with specified configurations.
- VPC and Subnets: Sets up a VPC with public and private subnets.
- Internet Gateway and Route Table: Configures an internet gateway and route table for public subnet access.
- Security Groups: Defines security groups for EC2 instance access.
- S3 Bucket: Creates an S3 bucket for storing Terraform state files.
- DynamoDB Table: Sets up a DynamoDB table for state locking.

**Installs Software**

- Apache2: Installs the Apache HTTP server.
- Python: Installs Python interpreter. (In case you want to use Anisble)

**Prerequisites**

- AWS Account: You need an AWS account with appropriate permissions.
- Terraform: Install Terraform locally. Terraform Installation Guide.

**Usage**
- Clone the repository:

- git clone <repository_url>
- cd <repository_name>

**Initialize Terraform:**

- terraform init

**Review and apply the changes:**


- terraform plan
- terraform apply

**Clean up (Optional): This will tear down everything so you won't get charged/billed.**

terraform destroy
