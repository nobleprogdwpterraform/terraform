provider "aws" {
  region     = lookup(var.app_region, terraform.workspace)
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "web-server" {
    instance_type = "t2.micro"
    ami = lookup(var.ami, terraform.workspace)
    tags = {
      Description = terraform.workspace
    }
}
