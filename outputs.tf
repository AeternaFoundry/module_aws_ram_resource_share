output "ram_resource_shares_id" {
  description = "Map of id values across all ram_resource_shares, keyed the same as var.ram_resource_shares"
  value       = { for k, v in aws_ram_resource_share.ram_resource_shares : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ram_resource_shares_allow_external_principals" {
  description = "Map of allow_external_principals values across all ram_resource_shares, keyed the same as var.ram_resource_shares"
  value       = { for k, v in aws_ram_resource_share.ram_resource_shares : k => v.allow_external_principals if v.allow_external_principals != null }
}
output "ram_resource_shares_arn" {
  description = "Map of arn values across all ram_resource_shares, keyed the same as var.ram_resource_shares"
  value       = { for k, v in aws_ram_resource_share.ram_resource_shares : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ram_resource_shares_name" {
  description = "Map of name values across all ram_resource_shares, keyed the same as var.ram_resource_shares"
  value       = { for k, v in aws_ram_resource_share.ram_resource_shares : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ram_resource_shares_permission_arns" {
  description = "Map of permission_arns values across all ram_resource_shares, keyed the same as var.ram_resource_shares"
  value       = { for k, v in aws_ram_resource_share.ram_resource_shares : k => v.permission_arns if v.permission_arns != null && length(v.permission_arns) > 0 }
}
output "ram_resource_shares_region" {
  description = "Map of region values across all ram_resource_shares, keyed the same as var.ram_resource_shares"
  value       = { for k, v in aws_ram_resource_share.ram_resource_shares : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ram_resource_shares_resource_share_configuration" {
  description = "Map of resource_share_configuration values across all ram_resource_shares, keyed the same as var.ram_resource_shares"
  value       = { for k, v in aws_ram_resource_share.ram_resource_shares : k => one(v.resource_share_configuration) if v.resource_share_configuration != null && length(v.resource_share_configuration) > 0 }
}
output "ram_resource_shares_tags" {
  description = "Map of tags values across all ram_resource_shares, keyed the same as var.ram_resource_shares"
  value       = { for k, v in aws_ram_resource_share.ram_resource_shares : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "ram_resource_shares_tags_all" {
  description = "Map of tags_all values across all ram_resource_shares, keyed the same as var.ram_resource_shares"
  value       = { for k, v in aws_ram_resource_share.ram_resource_shares : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

