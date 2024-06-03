#Terraform backend needs to run after s3 bucket is created. commented out until s3 is created.
/*
terraform {
    backend "s3" {
        bucket = "Terstate4229"
        dynamodb_table = "state-lock"
        key = "terraform.tfstate"
        region = "us-east-1"
        encrypt = true
    }
}
*/

provider "aws" {
  region = "us-east-1"

}