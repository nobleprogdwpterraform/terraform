
provider "aws" {
  region = "us-east-1"
  access_key = "AKIA5CBDRLCA4UPUJAZ5"
  secret_key = "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"
}

module "US-Payroll-App" {
    source = "../modules/payroll-app"
    app_region = "us-east-1"
    ami = "ami-0360c520857e3138f"
}