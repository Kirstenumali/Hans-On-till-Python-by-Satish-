resource "aws_iam_user" "user1" {
    name = "terraform-first-user"
}

resource "aws_iam_policy" "user1_policy" {
    name = "ec2-partial-read-permission"
    policy = jsonencode({
        "Version": "2012-10-17",
        "Statement": [
            {
            "Sid": "Stmt1705629594847",
            "Action": [
                "ec2:DescribeImages",
                "ec2:DescribeInstances",
                "ec2:DescribeKeyPairs",
                "ec2:DescribeSpotFleetRequests",
                "ec2:DescribeVerifiedAccessGroups",
                "ec2:DetachClassicLinkVpc",
                "ec2:GetEbsEncryptionByDefault"
            ],
            "Effect": "Allow",
            "Resource": "*"
            }
        ]
        }
    )
}

resource "aws_iam_user_policy_attachment" "user1-policy-attach" {
  user       = aws_iam_user.user1.name
  policy_arn = aws_iam_policy.user1_policy.arn
}