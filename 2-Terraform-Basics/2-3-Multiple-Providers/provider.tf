terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.0"
    }


    random = {

    }

  }
}

/*
Run terraform init command everytime after adding a new provider in configuration
*/