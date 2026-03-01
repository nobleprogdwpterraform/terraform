
provider "aws" {
  region = "eu-north-1"
  access_key = "AKIA5CBDRLCAQUL66LJA"
  secret_key = "qfnv3JNdGnU44XPm/uMpG0VZH7FH6MZb1EIy5ARV"
}


resource "aws_iam_user" "test-user" {
  name = "terraform" # Replace terraform with your name (use lowercase)
} 


/*
resource "aws_iam_policy" "list-user-policy" {
  name   = "terraform-ListUserPolicy" # Replace terraform with your name
  policy = <<EOF

{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "iam:GenerateCredentialReport",
                "iam:GenerateServiceLastAccessedDetails",
                "iam:Get*",
                "iam:List*",
                "iam:SimulateCustomPolicy",
                "iam:SimulatePrincipalPolicy"
            ],
            "Resource": "*"
        }
    ]
}
    EOF
}


resource "aws_iam_user_policy_attachment" "test-user-list-user" {
    user = aws_iam_user.test-user.name
    policy_arn = aws_iam_policy.list-user-policy.arn
}
*/
