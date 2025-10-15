
provider "aws" {
  region = "us-east-2" # for projectA us-east-1, for projectB us-east-2
  access_key = ""
  secret_key = ""
}


resource "aws_instance" "web-server" {
    instance_type = "t2.micro"
    ami = lookup(var.ami, terraform.workspace) # ProjectA = ami-0360c520857e3138f
    tags = {
      Description = terraform.workspace
    }
}

# terraform workspace list
# terraform workspace new ProjectA
# terraform workspace new ProjectB
# terraform workspace select ProjectA
