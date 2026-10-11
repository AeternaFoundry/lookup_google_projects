variable "projects_lookup" {
  description = <<EOT
Map of projects_lookup, attributes below
Required:
    - filter
EOT

  type = map(object({
    filter = string
  }))
}

