###Attaches policy to Kage group####
resource "aws_iam_group_policy_attachment" "Directors" {
  group      = aws_iam_group.Kage.name
  policy_arn = aws_iam_policy.AdministratorAccess.arn
}

### Attaches policy to Jonin group ###
resource "aws_iam_group_policy_attachment" "Officers" {
  group      = aws_iam_group.Jonin.name
  policy_arn = aws_iam_policy.AdministratorAccess-Amplify.arn
}

### Attaches policy to Chunin group ###
resource "aws_iam_group_policy_attachment" "Chunin" {
  group      = aws_iam_group.Chunin.name
  policy_arn = aws_iam_policy.AmazonAppStreamReadOnlyAccess.arn
}

### Attaches policy to Genin group ###
resource "aws_iam_group_policy_attachment" "Genin" {
  group      = aws_iam_group.Genin.name
  policy_arn = aws_iam_policy.AmazonECS_FullAccess.arn
}

### Attaches policy to AcademyStudent group ###
resource "aws_iam_group_policy_attachment" "Trainees" {
  group      = aws_iam_group.AcademyStudent.name
  policy_arn = aws_iam_policy.AmazonECS_FullAccess.arn
}