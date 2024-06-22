resource "aws_iam_role" "this" {
  name = "${var.resource_name_prefix}-lambda-role"
  assume_role_policy = data.aws_iam_policy_document.lambda_role_trust.json
  path = "/${var.resource_name_prefix}/"
}

data "aws_iam_policy_document" "lambda_role_trust" {
  statement {
    sid = "AllowLambdaAssumeRole"
    principals {
      type = "Service"
      identifiers = [ "lambda.amazonaws.com" ]
    }
    actions = [ "sts:AssumeRole" ]
  }
}

resource "aws_iam_role_policy_attachment" "basic_exec" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role = aws_iam_role.this.name
}