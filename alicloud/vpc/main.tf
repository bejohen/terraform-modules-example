locals {
  vswitches = {
    for x in var.vswitches :
    "${x.vswitch_name}/${x.vswitch_cidr}/${x.vswitch_zone}" => x
  }
}

resource "alicloud_vpc" "main" {
  vpc_name              = var.vpc_name
  cidr_block            = var.vpc_cidr
  description           = var.description
  resource_group_id = var.resource_group

  tags = {
    ManagedBy    = "terraform"
    Environment  = var.environment
  }
}

resource "alicloud_vswitch" "main" {
  for_each      = local.vswitches
  vswitch_name  = each.value.vswitch_name
  cidr_block    = each.value.vswitch_cidr
  zone_id       = each.value.vswitch_zone
  vpc_id        = alicloud_vpc.main.id
  description   = "Private virtual switch for ${var.vpc_name} ${each.value.vswitch_zone}"

  tags = {
    ManagedBy    = "terraform"
    Environment  = var.environment
  }
  depends_on = [alicloud_vpc.main]
}