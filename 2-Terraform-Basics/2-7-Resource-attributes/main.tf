
resource "local_file" "file" {
  filename = "pets.txt"
  content = "This file is create at ${random_pet.fav-pet.id}"
}

resource "time_static" "timestamp" {

}

resource "random_pet" "fav-pet" {
  length = 1
}