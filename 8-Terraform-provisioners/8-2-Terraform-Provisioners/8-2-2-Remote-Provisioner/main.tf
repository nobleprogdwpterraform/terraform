provider "aws" {
  region = "eu-north-1"
  access_key = "AKIA5CBDRLCAW5T4NRXA"
  secret_key = "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"
}
resource "aws_instance" "ec2-webserver" {
    instance_type = "t3.micro"
    ami = "ami-0a716d3f3b16d290c"

  provisioner "remote-exec" {
    inline = [ "echo 'Remote provisioner success' > /tmp/remote-prov.txt" ]
  }
  
    connection {
    type = "ssh"
    host = self.public_ip
    user = "ubuntu"
    private_key = file("my-key")
  }

  key_name = aws_key_pair.public-key.id
  vpc_security_group_ids = [aws_security_group.ssh-access.id]
}


resource "aws_key_pair" "public-key" {
    key_name = "sahdev-1-pub-key"
    public_key = file("my-key.pub")
}

resource "aws_security_group" "ssh-access" {
  name = "sahdev-1-ssh-access"
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
# ssh -i my-key ubuntu@51.20.84.109
# cat /tmp/remote-prov.txt