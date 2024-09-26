
terraform {
  required_providers {
    local = {
        source = "hashicorp/local"
        version = "<2.5.1, > 2.3.0, !=2.4.0"
    }
  }
}

resource "local_file" "pets" {
  filename = "pets.txt"
  content = "content"
}