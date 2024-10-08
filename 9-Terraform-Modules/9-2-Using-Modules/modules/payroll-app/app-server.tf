
provider "aws" {
  region     = var.app_region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "app-server" {
    instance_type = "t2.micro"
    ami = var.ami
    tags = {
      Name = "${var.app_region}-app-server"
    }
    depends_on = [aws_dynamodb_table.payroll_db,
                aws_s3_bucket.payroll_data]
}