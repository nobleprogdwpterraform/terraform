
provider "aws" {
  region = "us-east-1"
  access_key = "AKIA5CBDRLCAQUL66LJA"
  secret_key = "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"
}

module "US-Payroll-App" {
    source = "../modules/payroll-app"
    app_region = "us-east-1"
    ami = "ami-0360c520857e3138f"
}