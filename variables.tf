variable "compute_router_route_policies" {
  description = <<EOT
Map of compute_router_route_policies, attributes below
Required:
    - name
    - router
    - terms (block):
        - actions (optional, block):
            - description (optional)
            - expression (required)
            - location (optional)
            - title (optional)
        - match (required, block):
            - description (optional)
            - expression (required)
            - location (optional)
            - title (optional)
        - priority (required)
Optional:
    - deletion_policy
    - project
    - region
    - type
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name            = string
    router          = string
    deletion_policy = optional(string)
    project         = optional(string)
    region          = optional(string)
    type            = optional(string)
    terms = list(object({
      actions = optional(list(object({
        description = optional(string)
        expression  = string
        location    = optional(string)
        title       = optional(string)
      })))
      match = object({
        description = optional(string)
        expression  = string
        location    = optional(string)
        title       = optional(string)
      })
      priority = number
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.compute_router_route_policies : (
        length(v.terms) >= 1
      )
    ])
    error_message = "Each terms list must contain at least 1 items"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

