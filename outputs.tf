output "compute_router_route_policies_id" {
  description = "Map of id values across all compute_router_route_policies, keyed the same as var.compute_router_route_policies except keys with no id are omitted"
  value       = { for k, v in google_compute_router_route_policy.compute_router_route_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_router_route_policies_deletion_policy" {
  description = "Map of deletion_policy values across all compute_router_route_policies, keyed the same as var.compute_router_route_policies except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_router_route_policy.compute_router_route_policies : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_router_route_policies_fingerprint" {
  description = "Map of fingerprint values across all compute_router_route_policies, keyed the same as var.compute_router_route_policies except keys with no fingerprint are omitted"
  value       = { for k, v in google_compute_router_route_policy.compute_router_route_policies : k => v.fingerprint if v.fingerprint != null && length(v.fingerprint) > 0 }
}
output "compute_router_route_policies_name" {
  description = "Map of name values across all compute_router_route_policies, keyed the same as var.compute_router_route_policies except keys with no name are omitted"
  value       = { for k, v in google_compute_router_route_policy.compute_router_route_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_router_route_policies_project" {
  description = "Map of project values across all compute_router_route_policies, keyed the same as var.compute_router_route_policies except keys with no project are omitted"
  value       = { for k, v in google_compute_router_route_policy.compute_router_route_policies : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_router_route_policies_region" {
  description = "Map of region values across all compute_router_route_policies, keyed the same as var.compute_router_route_policies except keys with no region are omitted"
  value       = { for k, v in google_compute_router_route_policy.compute_router_route_policies : k => v.region if v.region != null && length(v.region) > 0 }
}
output "compute_router_route_policies_router" {
  description = "Map of router values across all compute_router_route_policies, keyed the same as var.compute_router_route_policies except keys with no router are omitted"
  value       = { for k, v in google_compute_router_route_policy.compute_router_route_policies : k => v.router if v.router != null && length(v.router) > 0 }
}
output "compute_router_route_policies_terms" {
  description = "Map of terms values across all compute_router_route_policies, keyed the same as var.compute_router_route_policies except keys with no terms are omitted"
  value       = { for k, v in google_compute_router_route_policy.compute_router_route_policies : k => v.terms if v.terms != null && length(v.terms) > 0 }
}
output "compute_router_route_policies_type" {
  description = "Map of type values across all compute_router_route_policies, keyed the same as var.compute_router_route_policies except keys with no type are omitted"
  value       = { for k, v in google_compute_router_route_policy.compute_router_route_policies : k => v.type if v.type != null && length(v.type) > 0 }
}

