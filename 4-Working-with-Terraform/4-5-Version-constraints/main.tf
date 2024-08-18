
terraform {
  required_providers {
    local = {
        source = "hashicorp/local"
    }
  }
}

resource "local_file" "pets" {
  filename = "pets.txt"
  content = "content"
}