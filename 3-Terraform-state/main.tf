resource "local_file" "pets" {
  filename = "pets.txt"
  content = "i love pets!"
}

resource "random_pet" "random-pet" {
  prefix = "Mr"
  length = 1
}