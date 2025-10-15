
resource "local_file" "my-pets" {
  filename = "pets.txt"
  content = "content"
}

/*
Terraform State commands:

terraform state list
terraform state list local_file.pets
terraform state show

terraform state mv local_file.pets local_file.my-pets
terraform state pull
terraform state rm local_file.pets
*/