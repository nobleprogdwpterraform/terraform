
provider "aws" {
  region = "eu-north-1"
  access_key = "AKIA5CBDRLCA4UPUJAZ5"
  secret_key = "Ie2BePTRdH/Lke2rh1wJEtcrb4ZSNoo4OMtpMLRo"
}

data "aws_iam_user" "test-user" {
    user_name="terraform" # Replace terraform with your name (use lowercase)
}


resource "aws_s3_bucket" "finance" {
    bucket = "${data.aws_iam_user.test-user.user_name}1234finance"
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
