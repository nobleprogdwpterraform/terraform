
provider "aws" {
  region     = "eu-west-1"
  access_key = ""
  secret_key = ""
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
    /*
    ami = "ami-0c38b837cd80f13bb"
    instance_type = "t2.micro"
    security_groups = [""]
    vpc_security_group_ids = ["sg-0ecdd5f3518418f"]
    tags = {
      Name = "ec2-server"
    }
    */
}

# terraform import aws_instance.ec2-server instacnce_id