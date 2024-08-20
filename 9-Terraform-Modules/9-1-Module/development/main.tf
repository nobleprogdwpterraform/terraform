
provider "aws" {
  region     = "eu-west-1"
  access_key = ""
  secret_key = ""
}
module "dev-webserver" {
    source = "../aws-instance"
    
}