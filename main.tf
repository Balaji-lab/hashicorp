terraform {

backend "remote" {
   organization = "hashicorp-balajr"
   workspaces {
     name = "hashicorp"
  }
 }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

##################################################################################
# VARIABLES
##################################################################################

variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "private_key_path" {}
variable "key_name" {}
variable "region" {
  default = "us-west-2"
}

##################################################################################
# PROVIDERS
##################################################################################
 provider "aws" {
       profile = "default"
  region  = "us-west-2"
 }

#provider "aws" {
 # access_key = var.aws_access_key
  #secret_key = var.aws_secret_key
  #region     = var.region
#}


resource "aws_instance" "app_server" {
  #ami           = "ami-830c94e3"
  ami           = "ami-08d70e59c07c61a3a"
  instance_type = "t2.micro" 

  tags = {
    Name = var.instance_name
  }
}
