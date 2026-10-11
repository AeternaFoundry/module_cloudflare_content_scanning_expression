resource "cloudflare_content_scanning_expression" "content_scanning_expressions" {
  for_each = var.content_scanning_expressions

  body    = each.value.body
  zone_id = each.value.zone_id
  payload = each.value.payload
}

