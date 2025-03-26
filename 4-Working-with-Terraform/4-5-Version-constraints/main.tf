terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = ">1.2.2,<2.2.0,!=1.4.0"
    }
  }
}

/*
1. By default terraform downloads latest version
2. version constrants:
  version = "!=2.5.1"
  version = "<2.5.1"
  version = ">2.5.1"
  version = ">1.2.2,<2.2.0,!=1.4.0"

*/


resource "local_file" "pets" {
  filename = "pets.txt"
  content = "content"
}