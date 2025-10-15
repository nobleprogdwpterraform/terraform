

resource "aws_dynamodb_table" "payroll_db" {
    name =  "sahdev-user_data"
    hash_key = "EmployeeID"
    billing_mode = "PAY_PER_REQUEST"
    attribute {
      name = "EmployeeID"
      type = "S"
    }

}