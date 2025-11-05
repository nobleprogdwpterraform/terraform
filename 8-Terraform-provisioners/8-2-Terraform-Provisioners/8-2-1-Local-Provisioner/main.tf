provider "aws" {
  region = "eu-north-1"
  access_key = "AKIA5CBDRLCA4UPUJAZ5"
  secret_key = "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"
}

resource "aws_instance" "ec2-server" {
    instance_type = "t3.micro"
    ami = "ami-0a716d3f3b16d290c"

    provisioner "local-exec" {
      command = "echo EC2 server ${aws_instance.ec2-server.public_ip} created > ip-address.txt"
    }

    provisioner "local-exec" {
      when = destroy
      command = "echo EC2 server ${self.public_ip} destroyed > ip-address-destroy.txt"
    }

}