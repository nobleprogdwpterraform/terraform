
provider "aws" {
  region = "eu-north-1"
  access_key = "AKIA5CBDRLCAW5T4NRXA"
  secret_key = "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"
}

data "aws_iam_user" "test-user" {
    user_name="sahdev"
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
