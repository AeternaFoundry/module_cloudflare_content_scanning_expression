variable "content_scanning_expressions" {
  description = <<EOT
Map of content_scanning_expressions, attributes below
Required:
    - body
    - zone_id
Optional:
    - payload
EOT

  type = map(object({
    body = list(object({
      payload = string
    }))
    zone_id = string
    payload = optional(string)
  }))
}

