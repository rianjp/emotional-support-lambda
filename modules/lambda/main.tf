data "archive_file" "this" {
  source_dir = "${path.root}/resources/scripts/esl"
  output_path = "${path.root}/resources/esl.zip"
  type = "zip"
}

resource "aws_lambda_function" "this" {
  filename = data.archive_file.this.output_path
  function_name = "${var.resource_name_prefix}-lambda"
  role = var.lambda_role_arn
  handler = "emotionalSupport.lambda_handler"
  source_code_hash = data.archive_file.this.output_base64sha256
  runtime = "python3.12"
  architectures = [ "x86_64" ]
}