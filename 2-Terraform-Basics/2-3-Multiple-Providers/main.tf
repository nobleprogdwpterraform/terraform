
resource "local_file" "pets" {
  filename = "pets.txt"
  content = "We love pets!"
}

resource "random_pet" "pet-name" {
  prefix = "Mr"
  length = 1
  separator = "."
}

/*
1. Run terraform init, plan and apply to see provider plugin downloaded with version 
  specified in provider.terraform 
2. Uncomeent line 7-11 and then run terraform plan and apply to see new resource created

*/

