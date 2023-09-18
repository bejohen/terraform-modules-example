# output "this_instance_domain" {
#   description = "The security group of the instance."
#   value       = "${alicloud_alidns_record.www.rr}.${alicloud_alidns_record.www.domain_name}"
# }

output "this_instance_id" {
  description = "The id of the instance."
  value       = module.ecs_cluster.this_instance_id[0]
}

output "this_instance_private_ip" {
  description = "The private ip of the instance."
  value       = module.ecs_cluster.this_private_ip[0]
}
