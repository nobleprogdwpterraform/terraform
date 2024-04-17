resource "local_file" "pets" {
  filename = "pets.txt"
  content = "i love pets!"
}

resource "random_pet" "random-pet" {
  prefix = "Mr"
  length = 1
}

/*
1. Run terraform init,plan and apply to see resource and terraform.tfstate file created
2. Remove a resource from your configuration and see resource deleted from 
terraform state file as well
3. Terraform uses state file to map your resources (in config files) to the real world
infrastructure deployed in remote cloud patforms


*/