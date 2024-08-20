
resource "local_file" "pets" {
  filename = "pets.txt"
  content = "We love pets!"
}


resource "random_pet" "pet-name" {
  prefix = "Mr"
  length = 1
  separator = "."
}




