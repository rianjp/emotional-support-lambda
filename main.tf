module "iam" {
  source = "./modules/IAM"
  resource_name_prefix = var.resource_name_prefix
}

module "lambda" {
  source = "./modules/lambda"
  resource_name_prefix = var.resource_name_prefix
  lambda_role_arn = module.iam.lambda_role_arn
}