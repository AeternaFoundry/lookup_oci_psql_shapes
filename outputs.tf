output "psql_shapes_lookup_id" {
  description = "Map of id values across all psql_shapes_lookup, keyed the same as var.psql_shapes_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_psql_shapes.psql_shapes_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "psql_shapes_lookup_compartment_id" {
  description = "Map of compartment_id values across all psql_shapes_lookup, keyed the same as var.psql_shapes_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_psql_shapes.psql_shapes_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "psql_shapes_lookup_filter" {
  description = "Map of filter values across all psql_shapes_lookup, keyed the same as var.psql_shapes_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_psql_shapes.psql_shapes_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "psql_shapes_lookup_shape_collection" {
  description = "Map of shape_collection values across all psql_shapes_lookup, keyed the same as var.psql_shapes_lookup except keys with no shape_collection are omitted"
  value       = { for k, v in data.oci_psql_shapes.psql_shapes_lookup : k => v.shape_collection if v.shape_collection != null && length(v.shape_collection) > 0 }
}

