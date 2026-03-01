
provider "aws" {
  region = "eu-north-1"
  access_key = "AKIA5CBDRLCAQUL66LJA"
  secret_key = "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"
}

resource "aws_instance" "web-server" {
    instance_type = "t3.micro"
    ami = "ami-0a716d3f3b16d290c"
    tags = {
      Description = "EC2 Webserver - terraform" #Replace terraform with your name
    }
    #key_name = aws_key_pair.public-key.id
    #vpc_security_group_ids = [aws_security_group.ssh-access.id]
}


/*
resource "aws_key_pair" "public-key" {
    key_name = "terraform-pub-key" #Replace terraform with your name (use lowercase)
    public_key = file("my-key.pub")
}

resource "aws_security_group" "ssh-access" {
  name = "terraform-ssh-access" #Replace terraform with your name (use lowercase)
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
*/

#TODO: Fill in based on hints below:
# Step 1: Run terraform lifecycle
# Step 2: Uncomment all the code and replace names where required
# Step 3: Generate key pair using command: ssh-keygen -b 4096 -t rsa -f my-key
# Step 4: terraform apply, note the value of public-ip varialbe in console output
# Step 5: Connect to the EC2 Server using command: ssh -i my-key ubuntu@<REPLACE_PUBLIC_IP>
# Step 6: Type exit and hit enter to logout from the remote server
# Step 7: terraform destroy to destroy the server

