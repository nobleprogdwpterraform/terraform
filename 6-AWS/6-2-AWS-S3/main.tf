
provider "aws" {
  region     = "eu-west-1"
  access_key = ""
  secret_key = ""
}


resource "aws_iam_user" "test-user" {
    name= "nobleprog"
}


resource "aws_s3_bucket" "finance" {
    bucket = "${aws_iam_user.test-user.name}1234finance"
    tags = {
      Description = "Finance documents"
    }
}

/*
resource "aws_s3_object" "upload" {
    bucket = aws_s3_bucket.finance.bucket
    key = "picture"
    source = "picture.jpeg"
}
*/
