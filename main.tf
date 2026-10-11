resource "google_compute_router_route_policy" "compute_router_route_policies" {
  for_each = var.compute_router_route_policies

  name            = each.value.name
  router          = each.value.router
  deletion_policy = each.value.deletion_policy
  project         = each.value.project
  region          = each.value.region
  type            = each.value.type

  dynamic "terms" {
    for_each = each.value.terms
    content {
      dynamic "actions" {
        for_each = terms.value.actions != null ? terms.value.actions : []
        content {
          description = actions.value.description
          expression  = actions.value.expression
          location    = actions.value.location
          title       = actions.value.title
        }
      }
      match {
        description = terms.value.match.description
        expression  = terms.value.match.expression
        location    = terms.value.match.location
        title       = terms.value.match.title
      }
      priority = terms.value.priority
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

