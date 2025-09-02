provider "aws" {
  region = "eu-north-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "ec2-server" {
    instance_type = "t3.micro"
    ami = "ami-0c4fc5dcabc9df21d"

    provisioner "local-exec" {
      on_failure = continue
      command = "echo EC2 server ${aws_instance.ec2-server.public_ip} created > ip-address.txt"
    }

    provisioner "local-exec" {
      when = destroy
      command = "echo EC2 server ${self.public_ip} destroyed > ip-address-destroy.txt"
    }

}