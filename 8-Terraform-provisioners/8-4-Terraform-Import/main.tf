provider "aws" {
  region = "eu-north-1"
  access_key = "AKIA5CBDRLCAUGEWUNZL"
  secret_key = "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"
}

resource "aws_instance" "ec2-server" {
    ami = "ami-09a9858973b288bdd"
    instance_type = "t3.micro"
    security_groups = ["launch-wizard-2"]
    vpc_security_group_ids = ["sg-096628c3ddb30f7aa"]
    tags = {
      Name = "My-New-Web-Server"
    }
}



#terraform import aws_instance.ec2-server i-06145d87cbf8d4421 (to import a resource under terraform)