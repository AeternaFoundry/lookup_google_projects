data "google_projects" "projects_lookup" {
  for_each = var.projects_lookup

  filter = each.value.filter
}

