
resource "local_file" "pets" {
  filename = "pets.txt"
  content = "I love pets"
}


# TODO: Fill in based on hints below:
# Hint: Declare a resource block for "local_file"
# Hint: Set attributes like filename and content using strings

/*
There are 3 types of providers 
1. Official
2. Partner
3. Community provider

More info can be found at: https://registry.terraform.io/

*/