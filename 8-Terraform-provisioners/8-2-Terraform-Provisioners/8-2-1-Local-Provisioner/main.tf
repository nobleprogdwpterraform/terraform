provider "aws" {
  region = "eu-north-1"
  access_key = "AKIA5CBDRLCAUGEWUNZL"
  secret_key = "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"
}

resource "aws_instance" "ec2-server" {
    instance_type = "t3.micro"
    ami = "ami-09a9858973b288bdd"

    provisioner "local-exec" {
      when = destroy
      command = "echo EC2 server ${aws_instance.ec2-server.public_ip} created > ip-address.txt"
    }

}