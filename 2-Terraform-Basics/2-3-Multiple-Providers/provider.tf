terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.0"
    }


    random = {
      source = "hashicorp/random"
      version = "3.7.1"
    }

  }
}

# TODO: Fill in based on hints below:
# Hint: Define two provider configurations by uncommenting the second provider


/*
Run terraform init command everytime after adding a new provider in configuration
*/