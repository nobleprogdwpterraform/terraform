provider "aws" {
  access_key = ""
  secret_key = ""
  region = "eu-west-1"
}

resource "aws_instance" "ec2-server" {
    ami = "ami-0c38b837cd80f13bb"
    instance_type = "t2.micro"
    provisioner "local-exec" {
      #on_failure = continue
      command = "echo EC2 server ${aws_instance.ec2-server.public_ip} created > ip-address.txt"
      #command = "echo EC2 server ${aws_instance.ec2-server.public_ip} created > temp/ip-address.txt"
    }

    /*
    provisioner "local-exec" {
        when = destroy
      command = "echo EC2 server ${self.public_ip} destroyed > destroy-info.txt"
    }
    */
}