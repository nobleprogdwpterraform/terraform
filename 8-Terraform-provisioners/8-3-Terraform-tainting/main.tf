
provider "aws" {
  region = "eu-north-1"
  access_key = "AKIA5CBDRLCA4UPUJAZ5"
  secret_key = "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"
}

resource "aws_instance" "ec2-server" {
    instance_type = "t3.micro"
    ami = "ami-0a716d3f3b16d290c"

    provisioner "local-exec" {
      on_failure = fail 
      command = "echo EC2 server ${aws_instance.ec2-server.public_ip} created > temp/ip-address.txt"
    }
  
}

#TODO: Fill in based on hints below:
# Step 1: terraform apply
# Step 2: terraform untaint aws_instance.ec2-server
# Step 3: terraform plan
# Step 4: terraform destroy
# Step 5: replace on_failure=continue on line 13
# Step 6: terraform apply
# Step 7: terraform plan 
# Step 8: terraform apply
# Step 9: terraform taint aws_instance.ec2-server (to taint a resource manually)
# Step 9: terraform destroy
