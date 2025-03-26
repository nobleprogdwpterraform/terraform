
provider "aws" {
  region = "eu-north-1"
  access_key = "AKIA5CBDRLCAVNGBW7OP"
  secret_key = "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"
}

resource "aws_instance" "ec2-server" {
    instance_type = "t3.micro"
    ami = "ami-0c1ac8a41498c1a9c"

    provisioner "local-exec" {
        on_failure = continue # default behaviour
      command = "echo EC2 server ${aws_instance.ec2-server.public_ip} created > temp/ip-address.txt"
    }
  
}

# terraform untaint aws_instance.ec2-server (to untaint a previously tainted resource)
# terraform taint aws_instance.ec2-server (to taint a resource)