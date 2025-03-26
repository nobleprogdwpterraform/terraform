
provider "aws" {
  region = "eu-north-1"
  access_key = "AKIA5CBDRLCAVNGBW7OP"
  secret_key = "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"
}

data "aws_iam_user" "test-user" {
    user_name="terraform"
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
