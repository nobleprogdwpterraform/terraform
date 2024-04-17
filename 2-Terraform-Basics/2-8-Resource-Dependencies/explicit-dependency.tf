resource "local_file" "file" {
  filename = "pets.txt"
  content = "My fav pet is Cat"
  depends_on = [ random_pet.pet ]
}

resource "random_pet" "pet" {
  prefix = "Mr"
  length = 1
  separator = "."
}

resource "time_static" "timestamp" {}

/*
1. Comment out implicit file
2. Uncomment explicit file
3. run command terraform init
4. run command terraform destroy (now its clean to work in explicit dependency)

5. put depennds_on[random_pet.pet] in local_file resource
6. Run terraform apply and see random_pet created before local_file

*/