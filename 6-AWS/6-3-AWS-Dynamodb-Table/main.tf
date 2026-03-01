provider "aws" {
  region = "eu-north-1"
  access_key = "AKIA5CBDRLCAQUL66LJA"
  secret_key = "qfnv3JNdGnU44XPm/uMpG0VZH7FH6MZb1EIy5ARV"
}

data "aws_iam_user" "test-user" {
    user_name = "terraform" # Replace terraform with your name (use lowercase)
}


resource "aws_dynamodb_table" "dynamodb-table" {
    name =  "${data.aws_iam_user.test-user.user_name}-cars"
    hash_key = "VIN"
    billing_mode = "PAY_PER_REQUEST"
    attribute {
      name = "VIN"
      type = "S"
    }

}


/*
resource "aws_dynamodb_table_item" "dynamo-table-item"{
    table_name = aws_dynamodb_table.dynamodb-table.name
    hash_key = aws_dynamodb_table.dynamodb-table.hash_key
    item = file("table-item.json")
}
*/


