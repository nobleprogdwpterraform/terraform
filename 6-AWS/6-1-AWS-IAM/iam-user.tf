
provider "aws" {
  region = "eu-north-1"
  access_key = "AKIA5CBDRLCAW5T4NRXA"
  secret_key = "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"
}


resource "aws_iam_user" "test-user" {
  name = "sahdev"
} 



resource "aws_iam_policy" "list-user-policy" {
  name   = "sahdev-ListUserPolicy"
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

