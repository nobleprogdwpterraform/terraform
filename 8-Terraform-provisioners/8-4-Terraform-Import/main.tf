provider "aws" {
  region = "eu-north-1"
  access_key = "AKIA5CBDRLCAVNGBW7OP"
  secret_key = "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"
}

resource "aws_instance" "ec2-server" {
    ami = "ami-0c1ac8a41498c1a9c"
    instance_type = "t3.micro"
    security_groups = ["default"]
    vpc_security_group_ids = ["sg-065eb4ac4e66a33b5"]
    tags = {
      Name = "nobleprog-web-server"
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


#terraform import aws_instance.ec2-server i-045aae0a458086451 (to import a resource under terraform)