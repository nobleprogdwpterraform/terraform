provider "aws" {
  region = "eu-north-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "ec2-server" {
    instance_type = "t3.micro"
    ami = "ami-09a9858973b288bdd"

    provisioner "local-exec" {
      when = destroy
      command = "echo EC2 server ${aws_instance.ec2-server.public_ip} created > ip-address.txt"
    }

}