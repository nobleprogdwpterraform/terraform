provider "aws" {
  region = "eu-north-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "ec2-server" {
   ami = "ami-0a716d3f3b16d290c"
   instance_type = "t3.micro"
   security_groups = ["launch-wizard-3"]
   vpc_security_group_ids = ["sg-09209cbb58ce0d852"]
   tags = {
      Name = "EC2-Server-nobleprog"
    }
}

/*
resource "aws_instance" "ec2-server" {
    ami = "ami-09a9858973b288bdd"
    instance_type = "t3.micro"
    security_groups = ["launch-wizard-2"]
    vpc_security_group_ids = ["sg-096628c3ddb30f7aa"]
    tags = {
      Name = "My-New-Web-Server"
    }
}
*/

# Provision an EC2 Server manually using AWS management console
# Note the unique Instance ID of the server
# Initialize the working terraform directory: terraform init
# Now run terraform import command: terraform import aws_instance.ec2-server <INSTANCE_ID>
# Copy the required attributes from terraform.tfstate and place into the empty resource block
# Destroy the resource: terraform destroy