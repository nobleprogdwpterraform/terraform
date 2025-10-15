provider "aws" {
  region = "eu-north-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "ec2-server" {
   ami = "ami-0a716d3f3b16d290c"
   instance_type = "t3.micro"
   security_groups = ["launch-wizard-1"]
   vpc_security_group_ids = ["sg-09209cbb58ce0d852"]
   tags = {
      Name = "-EC2-ServerSahdev"
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

# i-019e41e593e686feb


#terraform import aws_instance.ec2-server i-019e41e593e686feb (to import a resource under terraform)