

resource "local_file" "file" {
  filename = "pets.txt"
  content = "My fav pet is "
}

resource "random_pet" "pet" {
  prefix = "Mr"
  length = 1
  separator = "."
}