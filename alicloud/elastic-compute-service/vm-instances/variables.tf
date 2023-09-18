variable "region" {
  type    = string
  default = "ap-southeast-5"
}

variable "byte_length" {
  type    = number
  default = 8
}

variable "service_name" {
  type = string
}

variable "service_type" {
  type    = string
  default = "java"
}

variable "environment" {
  type    = string
  default = "production"
}

variable "vswitch_ids" {
  type    = list(any)
  default = [""]
}

variable "vpc_id" {
  type    = string
  default = ""
}

variable "instance_type" {
  type    = string
  default = "ecs.t6-c1m1.large"
}

variable "resource_group" {
  type    = string
  default = ""
}

variable "system_disk_size" {
  type    = string
  default = "20"
}

variable "key_name" {
  type    = string
  default = "nprd-key"
}

variable "associate_public_ip_address" {
  type    = bool
  default = false
}

variable "internet_max_bandwidth_out" {
  type    = number
  default = 10
}

variable "instance_charge_type" {
  type    = string
  default = "PostPaid"
}

variable "number_of_instances" {
  type    = number
  default = 1
}

variable "image_id" {
  type = string
}

variable "service_port" {
  type    = string
  default = "8080"
}

variable "use_num_suffix" {
  type    = bool
  default = false
}

variable "force_delete" {
  default = true
}

variable "domain" {
  default = "ascl.netali.co.id"
}

variable "type" {
  default = "app"
}

variable "system_disk_category" {
  default = "cloud_essd"
}

variable "private_ip" {
  default = ""
}

variable "role_name" {
  default = ""
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default = {
    prometheus_alert  = true
    prometheus_scrape = true
    created_by        = "terraform"
  }
}

variable "description" {
  description = "Description of all instances."
  type        = string
  default     = "An ECS instance came from terraform-alicloud-modules/ecs-instance"
}

variable "routes" {
  type        = list(map(string))
  description = "The list of routes for security group"
}
