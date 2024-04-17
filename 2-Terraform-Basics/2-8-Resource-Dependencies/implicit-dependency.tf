
/*
resource "local_file" "implicit-file" {
  filename = "pets.txt"
  content = "My fav pet is ${random_pet.implicit-pet.id}"
}

resource "random_pet" "implicit-pet" {
  prefix = "Mr"
  length = 1
  separator = "."
}

*/
