provider "aws" {
  region = "eu-north-1"
  access_key = "AKIA5CBDRLCAW5T4NRXA"
  secret_key = "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"
}

data "aws_iam_user" "test-user" {
    user_name = "terraform"
}

/**/
resource "aws_dynamodb_table" "dynamodb-table" {
    name =  "${data.aws_iam_user.test-user.user_name}-cars"
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
*/


