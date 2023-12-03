### Defining which member, belongs to which group ###
resource "aws_iam_user_group_membership" "Kage" {
  user = aws_iam_user.Kage01.name

  groups = [
    aws_iam_group.Kage.name,
    aws_iam_group.Jonin.name,
  ]
}

### Jonin are members of Jonin and Chunin Group ###
resource "aws_iam_user_group_membership" "Jonin" {
  user = aws_iam_user.Jonin01.name

  groups = [
    aws_iam_group.Jonin.name,
    aws_iam_group.Chunin.name,
  ]
}

### Chunin are members of Chunin and Genin Group ###
resource "aws_iam_user_group_membership" "Chunin" {
  user = aws_iam_user.Chunin01.name

  groups = [
    aws_iam_group.Chunin.name,
    aws_iam_group.Genin.name,
  ]
}


resource "aws_iam_user_group_membership" "Genin" {
  user = aws_iam_user.Genin01.name

  groups = [
    aws_iam_group.Genin.name,
    aws_iam_group.AcademyStudent.name,
  ]
}