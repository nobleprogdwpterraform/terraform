
resource "local_file" "pets" {
  filename = "pets.txt"
  content = "I love pets"
}

/*
There are 3 types of providers 
1. Official
2. Partner
3. Community provider

More info can be found at: https://registry.terraform.io/

*/