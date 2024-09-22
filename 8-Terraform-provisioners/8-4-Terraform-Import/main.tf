
provider "aws" {
  region     = "eu-west-1"
  access_key = ""
  secret_key = ""
}

#data "aws_instance" "ec2" {
 #   instance_id = "i-0c054e939f5668367"
#}

#output "ec2" {
 # value = data.aws_instance.ec2.public_dns
#}

resource "aws_instance" "ec2-server"{
    ami = "ami-0c1c30571d2dae5c9"
    instance_type = "t2.micro"
    security_groups = ["default"]
    vpc_security_group_ids = ["sg-0af9440afae05fe20"]
    tags = {
      Name = "ec2-server"
    }
}
