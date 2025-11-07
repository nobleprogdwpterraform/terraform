

resource "local_file" "file" {
  filename = "pets.txt"
  content = "My fav pet is Cat"
  depends_on = [random_pet.pet]
}

resource "random_pet" "pet" {
  prefix = "Mr"
  length = 1
  separator = "."
}

resource "time_static" "timestamp" {
  
}


# TODO: Fill in based on hints below:
# Hint: Use depends_on attribute to define explicit dependency
# Hint: For example, create a resource that should wait for random_pet.pet before executing
# depends_on = [random_pet.pet]
