provider "aws" {
  region = "eu-north-1"
  access_key = "AKIA5CBDRLCA4UPUJAZ5"
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
    key_name = "terraform-1-pub-key" #Replace terraform with your name
    public_key = file("my-key.pub")
}

resource "aws_security_group" "ssh-access" {
  name = "terraform-1-ssh-access" #Replace terraform with your name
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

#TODO: Fill in based on hints below:
# Step 1: Generate key pair using command: ssh-keygen -b 4096 -t rsa -f my-key
# Step 2: replace names where
# Step 3: terraform apply, note the value of public-ip varialbe in console output
# Step 4: Connect to the EC2 Server using command: ssh -i my-key ubuntu@<IP_ADDRESS>
# Step 5: Verify remote provisioner execution: cat /tmp/remote-prov.txt
# Step 6: type exit and hit enter to logout from the remote server
# Step 7: terraform destroy to destroy the server
