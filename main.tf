resource "oci_opsi_chargeback_plan" "opsi_chargeback_plans" {
  for_each = var.opsi_chargeback_plans

  compartment_id   = each.value.compartment_id
  entity_source    = each.value.entity_source
  plan_description = each.value.plan_description
  plan_name        = each.value.plan_name
  plan_type        = each.value.plan_type
  defined_tags     = each.value.defined_tags
  freeform_tags    = each.value.freeform_tags

  dynamic "plan_custom_items" {
    for_each = each.value.plan_custom_items
    content {
      is_customizable = plan_custom_items.value.is_customizable
      name            = plan_custom_items.value.name
      value           = plan_custom_items.value.value
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

