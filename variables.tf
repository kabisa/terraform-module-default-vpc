variable "account_id" {
  description = "AWS Account ID"
}

variable "role" {
  default = "OrganizationAccountAccessRole"
  description = "Role to assume"
}

variable "region" {
  default = "eu-west-1"
}

variable "enable_vpc_flow_logs" {
  default = 1
}
