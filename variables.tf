variable "region" {
  type = string
  description = "eu-west-2"
  default = "eu-west-2"
}

variable "resource_name_prefix" {
  type = string
  description = "a string to use as a resource name prefix when required"
  default = "esl"
}