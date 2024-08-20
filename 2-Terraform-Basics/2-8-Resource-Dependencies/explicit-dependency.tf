
resource "local_file" "file1" {
  filename = "pets.txt"
  content = "My fav pet is Cat"
  depends_on = [random_pet.pet1]
}

resource "random_pet" "pet1" {
  prefix = "Mr"
  length = 1
  separator = "."
}

resource "time_static" "timestamp" {
  
}
