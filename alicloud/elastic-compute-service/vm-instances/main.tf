module "ecs_cluster" {
  source = "../"

  number_of_instances = var.number_of_instances

  name                        = var.service_name
  description                 = var.description
  #host_name                   = "${var.service_name}"
  use_num_suffix              = var.use_num_suffix
  image_id                    = var.image_id
  instance_type               = var.instance_type
  vpc_id                      = var.vpc_id
  vswitch_ids                 = var.vswitch_ids
  associate_public_ip_address = var.associate_public_ip_address
  internet_max_bandwidth_out  = var.internet_max_bandwidth_out
  key_name                    = var.key_name
  instance_charge_type        = var.instance_charge_type
  private_ip                  = var.private_ip
  role_name                   = var.role_name
  resource_group_id           = var.resource_group
  environment                 = var.environment
  system_disk_category        = var.system_disk_category
  system_disk_size            = var.system_disk_size
  routes                      = var.routes

  subscription = {
    auto_renew_period  = 1
    include_data_disks = true
    period             = 1,
    period_unit        = "Month"
    renewal_status     = "AutoRenewal"
  }

  tags = {
    created_by        = "terraform"
    environment       = var.environment
    host_target       = var.service_name
  }
}

# resource "alicloud_alidns_record" "www" {
#   domain_name = var.domain
#   rr          = "${var.service_name}.${var.type}.${var.env}"
#   type        = "A"
#   value       = module.ecs_cluster.this_private_ip[0]
#   remark      = "endpoint for ${var.service_name}"
#   status      = "ENABLE"

#   lifecycle {
#     ignore_changes = [
#       rr
#     ]
#   }
# }
