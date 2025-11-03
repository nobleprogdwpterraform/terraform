

resource "local_file" "file" {
  filename = "pets.txt"
  content = "My fav pet is "
}

resource "random_pet" "pet" {
  prefix = "Mr"
  length = 1
  separator = "."
}


# TODO: Fill in based on hints below:
# Hint: Use expressions to construct filename dynamically using expression ${random_pet.pet.id}

