
resource "local_file" "pets" {
  filename = "pets.txt"
  content = "content"
}

/*
1. terraform state list
2. terraform state list local_file.pets
3. terraform state show
4. terraform state pull
5. terraform state mv local_file.pets local_file.my-pets
6. terraform state rm local_file.my-pets
*/