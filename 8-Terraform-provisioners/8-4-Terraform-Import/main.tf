
provider "aws" {
    access_key = ""
    secret_key = ""
    region = "eu-west-1"
  
}

/*
data "aws_instance" "ec2" {
    instance_id = "i-08ec4bef1c385d929"
}

output "ec2" {
  value = data.aws_instance.ec2.public_dns
}
*/

resource "aws_instance" "ec2-server"{
    
    ami = "ami-0c38b837cd80f13bb"
    instance_type = "t2.micro"
    security_groups = ["launch-wizard-2"]
    vpc_security_group_ids = ["sg-03dac216d1d0b776d"]
    tags = {
      Name = "ec2-server"
    }   
}

# terraform import aws_instance.ec2-server i-08acf3f0181d6c9f7