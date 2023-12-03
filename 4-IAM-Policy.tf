### I AM POLICY - Kage Level Policy ###
resource "aws_iam_policy" "AdministratorAccess" {
  name        = "AdministratorAccess"
  path        = "/"
  description = "Kage Policy"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Action   = "*"
        Resource = "*"
      },
    ]
  })
}

### I AM POLICY - Jonin Level Policy###
resource "aws_iam_policy" "AdministratorAccess-Amplify" {
  name        = "AdministratorAccess-Amplify"
  path        = "/"
  description = "Jonin Policy"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Action   = "*"
        Resource = "*"
      },
    ]
  })
}

### I AM POLICY - Chunin Level Policy###
resource "aws_iam_policy" "AmazonAppStreamReadOnlyAccess" {
  name        = "AmazonAppStreamReadOnlyAccess"
  path        = "/"
  description = "Chunin Policy"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Action   = "*"
        Resource = "*"
      },
    ]
  })
}

### I AM POLICY - Genin Level Policy###
resource "aws_iam_policy" "AmazonECS_FullAccess" {
  name        = "AmazonECS_FullAccess"
  path        = "/"
  description = "Genin Policy"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Action   = "*"
        Resource = "*"
      },
    ]
  })
}

### I AM POLICY - AcademyStudent Policy###
resource "aws_iam_policy" "AmazonElasticFileSystemClientFullAccess" {
  name        = "AmazonElasticFileSystemClientFullAccess"
  path        = "/"
  description = "Chunin Policy"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Action   = "*"
        Resource = "*"
      },
    ]
  })
}