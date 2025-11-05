
provider "aws" {
  region = "us-east-2" # for projectA us-east-1, for projectB us-east-2
  access_key = "AKIA5CBDRLCA4UPUJAZ5"
  secret_key = "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"
}


resource "aws_instance" "web-server" {
    instance_type = "t2.micro"
    ami = lookup(var.ami, terraform.workspace) # ProjectA = ami-0360c520857e3138f
    tags = {
      Description = terraform.workspace
    }
}

# Run below commands for workspaces
# Step 1: terraform init
# Step 2: terraform workspace list
# Step 3: create new workspace and switch to it: terraform workspace new ProjectA
# Step 4: terraform apply 
# Step 5: create new workspace: terraform workspace new ProjectB
# Step 6: Switch workspace: terraform workspace select ProjectA
