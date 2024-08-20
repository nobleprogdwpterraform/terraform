module "US-Payroll-App" {
    source = "../modules/payroll-app"
    app_region = "eu-west-1"
    ami = "ami-0c38b837cd80f13bb"
    bucket = "nobleprog1234-uk-bucket"
    access_key=""
    secret_key=""
}