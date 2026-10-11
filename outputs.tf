output "opsi_chargeback_plans_id" {
  description = "Map of id values across all opsi_chargeback_plans, keyed the same as var.opsi_chargeback_plans except keys with no id are omitted"
  value       = { for k, v in oci_opsi_chargeback_plan.opsi_chargeback_plans : k => v.id if v.id != null && length(v.id) > 0 }
}
output "opsi_chargeback_plans_compartment_id" {
  description = "Map of compartment_id values across all opsi_chargeback_plans, keyed the same as var.opsi_chargeback_plans except keys with no compartment_id are omitted"
  value       = { for k, v in oci_opsi_chargeback_plan.opsi_chargeback_plans : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "opsi_chargeback_plans_defined_tags" {
  description = "Map of defined_tags values across all opsi_chargeback_plans, keyed the same as var.opsi_chargeback_plans except keys with no defined_tags are omitted"
  value       = { for k, v in oci_opsi_chargeback_plan.opsi_chargeback_plans : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "opsi_chargeback_plans_entity_source" {
  description = "Map of entity_source values across all opsi_chargeback_plans, keyed the same as var.opsi_chargeback_plans except keys with no entity_source are omitted"
  value       = { for k, v in oci_opsi_chargeback_plan.opsi_chargeback_plans : k => v.entity_source if v.entity_source != null && length(v.entity_source) > 0 }
}
output "opsi_chargeback_plans_freeform_tags" {
  description = "Map of freeform_tags values across all opsi_chargeback_plans, keyed the same as var.opsi_chargeback_plans except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_opsi_chargeback_plan.opsi_chargeback_plans : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "opsi_chargeback_plans_is_customizable" {
  description = "Map of is_customizable values across all opsi_chargeback_plans, keyed the same as var.opsi_chargeback_plans except keys with no is_customizable are omitted"
  value       = { for k, v in oci_opsi_chargeback_plan.opsi_chargeback_plans : k => v.is_customizable if v.is_customizable != null }
}
output "opsi_chargeback_plans_lifecycle_details" {
  description = "Map of lifecycle_details values across all opsi_chargeback_plans, keyed the same as var.opsi_chargeback_plans except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_opsi_chargeback_plan.opsi_chargeback_plans : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "opsi_chargeback_plans_plan_category" {
  description = "Map of plan_category values across all opsi_chargeback_plans, keyed the same as var.opsi_chargeback_plans except keys with no plan_category are omitted"
  value       = { for k, v in oci_opsi_chargeback_plan.opsi_chargeback_plans : k => v.plan_category if v.plan_category != null && length(v.plan_category) > 0 }
}
output "opsi_chargeback_plans_plan_custom_items" {
  description = "Map of plan_custom_items values across all opsi_chargeback_plans, keyed the same as var.opsi_chargeback_plans except keys with no plan_custom_items are omitted"
  value       = { for k, v in oci_opsi_chargeback_plan.opsi_chargeback_plans : k => v.plan_custom_items if v.plan_custom_items != null && length(v.plan_custom_items) > 0 }
}
output "opsi_chargeback_plans_plan_description" {
  description = "Map of plan_description values across all opsi_chargeback_plans, keyed the same as var.opsi_chargeback_plans except keys with no plan_description are omitted"
  value       = { for k, v in oci_opsi_chargeback_plan.opsi_chargeback_plans : k => v.plan_description if v.plan_description != null && length(v.plan_description) > 0 }
}
output "opsi_chargeback_plans_plan_name" {
  description = "Map of plan_name values across all opsi_chargeback_plans, keyed the same as var.opsi_chargeback_plans except keys with no plan_name are omitted"
  value       = { for k, v in oci_opsi_chargeback_plan.opsi_chargeback_plans : k => v.plan_name if v.plan_name != null && length(v.plan_name) > 0 }
}
output "opsi_chargeback_plans_plan_type" {
  description = "Map of plan_type values across all opsi_chargeback_plans, keyed the same as var.opsi_chargeback_plans except keys with no plan_type are omitted"
  value       = { for k, v in oci_opsi_chargeback_plan.opsi_chargeback_plans : k => v.plan_type if v.plan_type != null && length(v.plan_type) > 0 }
}
output "opsi_chargeback_plans_state" {
  description = "Map of state values across all opsi_chargeback_plans, keyed the same as var.opsi_chargeback_plans except keys with no state are omitted"
  value       = { for k, v in oci_opsi_chargeback_plan.opsi_chargeback_plans : k => v.state if v.state != null && length(v.state) > 0 }
}
output "opsi_chargeback_plans_system_tags" {
  description = "Map of system_tags values across all opsi_chargeback_plans, keyed the same as var.opsi_chargeback_plans except keys with no system_tags are omitted"
  value       = { for k, v in oci_opsi_chargeback_plan.opsi_chargeback_plans : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "opsi_chargeback_plans_time_created" {
  description = "Map of time_created values across all opsi_chargeback_plans, keyed the same as var.opsi_chargeback_plans except keys with no time_created are omitted"
  value       = { for k, v in oci_opsi_chargeback_plan.opsi_chargeback_plans : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "opsi_chargeback_plans_time_updated" {
  description = "Map of time_updated values across all opsi_chargeback_plans, keyed the same as var.opsi_chargeback_plans except keys with no time_updated are omitted"
  value       = { for k, v in oci_opsi_chargeback_plan.opsi_chargeback_plans : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

