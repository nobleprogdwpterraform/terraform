
provider "aws" {
  region = "eu-north-1"
  access_key = ""
  secret_key = ""
}

module "UK-Payroll-App" {
    source = "../modules/payroll-app"
    app_region = "eu-north-1"
    ami = "ami-0c4fc5dcabc9df21d"
    bucket = "nobleprog-user-bucket"
}