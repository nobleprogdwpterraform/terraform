
provider "aws" {
  region = "eu-north-1"
  access_key = "AKIA5CBDRLCA4UPUJAZ5"
  secret_key = "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"
}

module "UK-Payroll-App" {
    source = "../modules/payroll-app"
    app_region = "eu-north-1"
    ami = "ami-0a716d3f3b16d290c"
    bucket = "terraform-user-bucket" #Replace terraform with your name
}