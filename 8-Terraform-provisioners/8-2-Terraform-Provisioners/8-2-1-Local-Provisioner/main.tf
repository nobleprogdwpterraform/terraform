provider "aws" {
  access_key = ""
  secret_key = ""
  region = "eu-west-1"
}

resource "aws_instance" "ec2-server" {
    ami = "ami-0c1c30571d2dae5c9"
    instance_type = "t2.micro"


}