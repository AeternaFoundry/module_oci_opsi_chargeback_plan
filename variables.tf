variable "opsi_chargeback_plans" {
  description = <<EOT
Map of opsi_chargeback_plans, attributes below
Required:
    - compartment_id
    - entity_source
    - plan_description
    - plan_name
    - plan_type
    - plan_custom_items (block):
        - is_customizable (optional)
        - name (required)
        - value (required)
Optional:
    - defined_tags
    - freeform_tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id   = string
    entity_source    = string
    plan_description = string
    plan_name        = string
    plan_type        = string
    defined_tags     = optional(map(string))
    freeform_tags    = optional(map(string))
    plan_custom_items = list(object({
      is_customizable = optional(bool)
      name            = string
      value           = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.opsi_chargeback_plans : (
        length(v.plan_custom_items) >= 1
      )
    ])
    error_message = "Each plan_custom_items list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.opsi_chargeback_plans : (
        contains([for v in ["EQUAL_ALLOCATION", "WEIGHTED_ALLOCATION", "UNUSED_ALLOCATION"] : lower(v)], lower(v.plan_type))
      )
    ])
    error_message = "must be one of: \"EQUAL_ALLOCATION\", \"WEIGHTED_ALLOCATION\", \"UNUSED_ALLOCATION\""
  }
}

