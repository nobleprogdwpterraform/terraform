provider "aws" {
  region = "eu-north-1"
  access_key = ""
  secret_key = ""
}
resource "aws_instance" "ec2-webserver" {
    instance_type = "t3.micro"
    ami = "ami-0c4fc5dcabc9df21d"

  provisioner "remote-exec" {
    inline = [ "echo 'Remote provisioner success' > /tmp/remote-prov.txt" ]
  }
  
    connection {
    type = "ssh"
    host = self.public_ip
    user = "ec2-user"
    private_key = file("my-key")
  }

  key_name = aws_key_pair.public-key.id
  vpc_security_group_ids = [aws_security_group.ssh-access.id]
}


resource "aws_key_pair" "public-key" {
    key_name = "terraform-1-pub-key"
    public_key = file("my-key.pub")
}

resource "aws_security_group" "ssh-access" {
  name = "terraform-1-ssh-access"
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


#ssh-keygen -b 4096 -t rsa -f my-key
# ssh -i my-key ec2-user@16.170.246.59
# cat /tmp/remote-prov.txt