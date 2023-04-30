resource "aws_rbin_rule" "this" {
  for_each = { for k, v in var.rbin_rule : k => v if var.create }

  resource_type = each.value.resource_type

  description = each.value.description

  dynamic "retention_period" {
    for_each = length(each.value.retention_period) > 0 ? [true] : []
    content {
      retention_period_unit = each.value.retention_period.retention_period_unit
      retention_period_value = each.value.retention_period.retention_period_value
    }
  }

  dynamic "resource_tags" {
    for_each = try(each.value.resource_tags, [])
    content {
      resource_tag_key = resource_tags.value.resource_tag_key
      resource_tag_value = try(resource_tags.value.resource_tag_value, null)
    }
  }

  dynamic "lock_configuration" {
    for_each = each.value.lock_configuration
    content {

      dynamic "unlock_delay" {
        for_each = length(each.value.lock_configuration.unlock_delay) > 0 ? [true] : []
        content {
          unlock_delay_unit = each.value.lock_configuration.unlock_delay.unlock_delay_unit
          unlock_delay_value = try(each.value.lock_configuration.unlock_delay.unlock_delay_value, null)
        }
      }
    }
  }
}