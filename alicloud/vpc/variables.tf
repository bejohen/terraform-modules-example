variable "vpc_name" {
  type        = string
  description = "The name of the VPC being created"
}

variable "vpc_cidr" {
  type        = string
  description = "The VPC CIDR"
}

variable "description" {
  type        = string
  description = "An optional description of this resource. The resource must be recreated to modify this field."
  default     = ""
}

variable "environment" {
  type        = string
  default     = ""
}

variable "resource_group" {
  type        = string
  default     = "shared"
}

variable "vswitches" {
  type        = list(map(string))
  description = "The list of vswitches being created"
}