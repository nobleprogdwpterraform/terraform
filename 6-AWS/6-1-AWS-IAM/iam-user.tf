provider "aws" {
  region     = "eu-west-1"
  access_key = ""
  secret_key = ""
}

# export AWS_ACCESS_KEY_ID=
# export AWS_SECRET_ACCESS_KEY=

resource "aws_iam_user" "test-user" {
  name = "nobleprog"
}


resource "aws_iam_policy" "list-user-policy" {
  name   = "ListUserPolicy-nobleprog"
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
