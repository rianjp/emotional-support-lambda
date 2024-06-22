variable "resource_name_prefix" {
  type = string
  description = "a string to use as a resource name prefix when required"
  default = "esl"
}

variable "lambda_role_arn" {
  type = string
  description = "the arn of the role to be used by lambda"
}