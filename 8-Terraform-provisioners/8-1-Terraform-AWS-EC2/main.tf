
provider "aws" {
  region = "eu-north-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "web-server" {
    instance_type = "t3.micro"
    ami = "ami-0c4fc5dcabc9df21d"
    tags = {
      Description = "EC2 Webserver - nobleprog"
    }
    key_name = aws_key_pair.public-key.id
    vpc_security_group_ids = [aws_security_group.ssh-access.id]
}



resource "aws_key_pair" "public-key" {
    key_name = "sahdev-pub-key"
    public_key = file("my-key.pub")
}

resource "aws_security_group" "ssh-access" {
  name = "sahdev-ssh-access"
  description = "SSH access to web-server"
  ingress  {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}



output "public-ip" {
  value = aws_instance.web-server.public_ip
}



#ssh-keygen -b 4096 -t rsa -f my-key
#ssh -i my-key ec2-user@16.171.198.155
