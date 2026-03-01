
provider "aws" {
  region = "eu-north-1"
  access_key = "AKIA5CBDRLCAQUL66LJA"
  secret_key = "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"
}

module "UK-Payroll-App" {
    source = "../modules/payroll-app"
    app_region = "eu-north-1"
    ami = "ami-0a716d3f3b16d290c"
    bucket = "terraform-user-bucket" #Replace terraform with your name
}