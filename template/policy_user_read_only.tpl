${jsonencode({
    "Version":"2012-10-17",
    "Statement": [
      {
        "Sid": "add-read-only-perm",
        "Principal": "*",
        "Effect": "Allow",
          "Action": [
             "glacier:InitiateJob",
             "glacier:GetJobOutput"
          ],
        "Resource": "arn:aws:glacier:${region}:${aws_id}:vaults/${name_vault}"
      }
    ]
})
}