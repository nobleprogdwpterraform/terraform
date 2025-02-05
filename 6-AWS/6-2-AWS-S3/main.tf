
provider "aws" {
  region = "eu-north-1"
  access_key = ""
  secret_key = ""
}

data "aws_iam_user" "test-user" {
    user_name="sahdev-user"
}


resource "aws_s3_bucket" "finance" {
    bucket = "${data.aws_iam_user.test-user.user_name}1234finance"
    tags = {
      Description = "Finance documents"
    }
}




resource "aws_s3_object" "upload" {
    bucket = aws_s3_bucket.finance.bucket
    key = "picture"
    source = "picture.jpeg"
}
