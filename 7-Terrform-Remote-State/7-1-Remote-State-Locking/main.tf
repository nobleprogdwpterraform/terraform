provider "aws" {
  region = "eu-north-1"
  access_key = "AKIA5CBDRLCAVNGBW7OP"
  secret_key = "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"
}



terraform {
  backend "s3" {
    bucket = "terraform1234finance" 
    key = "state/terraform.tfstate"
    dynamodb_table = "terraform-state-locking"
    region = "eu-north-1"
    access_key = "AKIA5CBDRLCAVNGBW7OP"
    secret_key = "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"
  }
}


data "aws_iam_user" "test-user" {
    user_name = "terraform"
}

resource "aws_dynamodb_table" "state-locking" {
    name = "${data.aws_iam_user.test-user.user_name}-state-locking"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
      name = "LockID"
      type = "S"
    }
}

resource "local_file" "local-file" {
    filename = "pets.txt"
    content = "We love pets!"
}
