
provider "aws" {
  region = "eu-west-1"
  access_key = "AKIA5CBDRLCAVNGBW7OP"
  secret_key = "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"
}

module "UK-Payroll-App" {
    source = "../modules/payroll-app"
    app_region = "eu-west-1"
    ami = "ami-0df368112825f8d8f"
    bucket = "nobleprog-user-bucket"
}