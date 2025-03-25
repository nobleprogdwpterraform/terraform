provider "aws" {
  region = "eu-north-1"
  access_key = ""
  secret_key = ""
}

/*

terraform {
  backend "s3" {
    bucket = "sahdev-user1234finance"
    key = "state/terraform.tfstate"
    dynamodb_table = "sahdev-user-state-locking"
    region = "eu-north-1"
    access_key = ""
    secret_key = ""
  }
}
*/

data "aws_iam_user" "test-user" {
    user_name = "sahdev-user"
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
