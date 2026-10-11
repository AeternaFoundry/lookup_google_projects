output "projects_lookup_id" {
  description = "Map of id values across all projects_lookup, keyed the same as var.projects_lookup except keys with no id are omitted"
  value       = { for k, v in data.google_projects.projects_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "projects_lookup_filter" {
  description = "Map of filter values across all projects_lookup, keyed the same as var.projects_lookup except keys with no filter are omitted"
  value       = { for k, v in data.google_projects.projects_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "projects_lookup_projects" {
  description = "Map of projects values across all projects_lookup, keyed the same as var.projects_lookup except keys with no projects are omitted"
  value       = { for k, v in data.google_projects.projects_lookup : k => v.projects if v.projects != null && length(v.projects) > 0 }
}

