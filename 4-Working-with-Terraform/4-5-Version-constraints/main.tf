terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version =
    }
  }
}




resource "local_file" "pets" {
  filename = "pets.txt"
  content = "content"
}