provider "aws" {
    access_key = ""
    secret_key = ""
    region = "eu-west-1"
  
}

resource "aws_instance" "ec2-webserver" {
  ami = "ami-0c38b837cd80f13bb"
  instance_type = "t2.micro"

    provisioner "local-exec" {
        on_failure = fail # default behaviour
      command = "echo EC2 server ${aws_instance.ec2-webserver.public_ip} created > temp/ip-address.txt"
    }
  
}