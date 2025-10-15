
provider "aws" {
  region = "eu-west-1"
  access_key = "AKIA5CBDRLCAW5T4NRXA"
  secret_key = "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"
}

module "UK-Payroll-App" {
    source = "../modules/payroll-app"
    app_region = "eu-west-1"
    ami = "ami-0df368112825f8d8f"
    bucket = "nobleprog-user-bucket"
}