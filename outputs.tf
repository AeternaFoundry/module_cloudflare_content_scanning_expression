output "content_scanning_expressions_id" {
  description = "Map of id values across all content_scanning_expressions, keyed the same as var.content_scanning_expressions except keys with no id are omitted"
  value       = { for k, v in cloudflare_content_scanning_expression.content_scanning_expressions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "content_scanning_expressions_body" {
  description = "Map of body values across all content_scanning_expressions, keyed the same as var.content_scanning_expressions except keys with no body are omitted"
  value       = { for k, v in cloudflare_content_scanning_expression.content_scanning_expressions : k => v.body if v.body != null && length(v.body) > 0 }
}
output "content_scanning_expressions_payload" {
  description = "Map of payload values across all content_scanning_expressions, keyed the same as var.content_scanning_expressions except keys with no payload are omitted"
  value       = { for k, v in cloudflare_content_scanning_expression.content_scanning_expressions : k => v.payload if v.payload != null && length(v.payload) > 0 }
}
output "content_scanning_expressions_zone_id" {
  description = "Map of zone_id values across all content_scanning_expressions, keyed the same as var.content_scanning_expressions except keys with no zone_id are omitted"
  value       = { for k, v in cloudflare_content_scanning_expression.content_scanning_expressions : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

