
terraform {
  required_providers {
    local = {
        source = "hashicorp/local"
        version = ">1.2.0, <2.0.0, !=1.4.0"

        #"!=2.5.1", "<2.5.1" "">2.5.1"", ">1.2.0, <2.0.0, !=1.4.0"
    }
  }
}

resource "local_file" "pets" {
  filename = "pets.txt"
  content = "content"
}