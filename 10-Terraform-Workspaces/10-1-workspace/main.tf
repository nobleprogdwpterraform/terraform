
provider "aws" {
  region = "us-east-1"
  access_key = "AKIA5CBDRLCAVNGBW7OP"
  secret_key = "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"
}


resource "aws_instance" "web-server" {
    instance_type = "t2.micro"
    ami = lookup(var.ami, terraform.workspace)
    tags = {
      Description = terraform.workspace
    }
}

# terraform workspace list
# terraform workspace new ProjectA
# terraform workspace new ProjectB
# terraform workspace select ProjectA
