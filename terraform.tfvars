# IAM Access and Secret Key for your IAM user
aws_access_key = "AKIA2XRXCUL3A6JI4VNY"

aws_secret_key = "brCGp0vD2rwrX7AxCh91HLiBvBgDMdMDxXzAAiAp"

# Name of the key pair in AWS, MUST be in same region as EC2 instance
# Check README for AWS CLI commands to create a key pair

key_name = "mykey"

# Local path to pem file for key pair. 
# Windows paths need to use double-backslash: Ex. C:\\Users\\Ned\\Pluralsight.pem

private_key_path = "C:\\HashiCorp\\learn-terraform-aws-instance\\mykey.pem" 