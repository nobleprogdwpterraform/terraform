provider "aws" {
  region = "eu-north-1"
  access_key = "AKIA5CBDRLCAW5T4NRXA"
  secret_key = "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"
}

resource "aws_instance" "ec2-server" {
    instance_type = "t3.micro"
    ami = "ami-0c1ac8a41498c1a9c"

    provisioner "local-exec" {
      on_failure = continue
      command = "echo EC2 server ${aws_instance.ec2-server.public_ip} created > temp/ip-address.txt"
    }

    provisioner "local-exec" {
      when = destroy
      command = "echo EC2 server ${self.public_ip} destroyed > ip-address-destroy.txt"
    }

}