terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = ">2.1.0, <2.5.0, !=2.4.0"
    }
  }
}

/*
Version contraints:
version = "<2.5.3"
version = ">2.5.1"
version = ">2.1.0, <2.5.0, !=2.4.0"

*/


resource "local_file" "pets" {
  filename = "pets.txt"
  content = "content"
}