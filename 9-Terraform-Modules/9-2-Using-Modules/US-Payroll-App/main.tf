
provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}

module "US-Payroll-App" {
    source = "../modules/payroll-app"
    app_region = "us-east-1"
    ami = "ami-084568db4383264d4"
}