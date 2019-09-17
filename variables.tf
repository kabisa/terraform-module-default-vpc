variable "account_id" {
  description = "AWS Account ID"
}

variable "role" {
  default = "OrganizationAccountAccessRole"
  description = "Role to assume"
}
