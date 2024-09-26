module "US-Payroll-App" {
    source = "../modules/payroll-app"
    app_region = "us-east-1"
    ami = "ami-04a81a99f5ec58529"
    bucket = "nobleprog1234-us-bucket"
    access_key=""
    secret_key=""
}