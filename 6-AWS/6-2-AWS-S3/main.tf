
provider "aws" {
  region = "eu-north-1"
  access_key = "AKIA5CBDRLCAQUL66LJA"
  secret_key = "qfnv3JNdGnU44XPm/uMpG0VZH7FH6MZb1EIy5ARV"
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
