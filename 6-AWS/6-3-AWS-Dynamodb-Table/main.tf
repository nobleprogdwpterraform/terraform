
provider "aws" {
  region     = "eu-west-1"
  access_key = ""
  secret_key = ""
}

resource "aws_iam_user" "test-user" {
    name = "nobleprog"
}

resource "aws_dynamodb_table" "dynamodb-table" {
    name =  "${aws_iam_user.test-user.name}-cars"
    hash_key = "VIN"
    billing_mode = "PAY_PER_REQUEST"
    attribute {
      name = "VIN"
      type = "S"
    }

}


resource "aws_dynamodb_table_item" "dynamo-table-item"{
    table_name = aws_dynamodb_table.dynamodb-table.name
    hash_key = aws_dynamodb_table.dynamodb-table.hash_key
    item = file("table-item.json")
}

