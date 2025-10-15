
provider "aws" {
  region = "eu-north-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "ec2-server" {
    instance_type = "t3.micro"
    ami = "ami-0a716d3f3b16d290c"

    provisioner "local-exec" {
        on_failure = fail # default behaviour
      command = "echo EC2 server ${aws_instance.ec2-server.public_ip} created > temp/ip-address.txt"
    }
  
}

# terraform untaint aws_instance.ec2-server (to untaint a previously tainted resource)
# terraform taint aws_instance.ec2-server (to taint a resource)