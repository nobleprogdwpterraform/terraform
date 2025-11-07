terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = ">2.1.0, <2.5.0, !=2.4.0"
    }
  }
}


resource "local_file" "pets" {
  filename = "pets.txt"
  content = "content"
}

# TODO: Fill in based on hints below:
# Version constraints:
# version = "<2.5.3"
# version = ">2.5.1"
# version = ">2.1.0, <2.5.0, !=2.4.0"