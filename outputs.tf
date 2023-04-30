output "ids" {
  value = { for k in sort(keys(var.rbin_rules)) : k => aws_rbin_rule.this[k].id if var.create }
}

output "lock_end_times" {
  value = { for k in sort(keys(var.rbin_rules)) : k => aws_rbin_rule.this[k].lock_end_time if var.create }
}

output "lock_states" {
  value = { for k in sort(keys(var.rbin_rules)) : k => aws_rbin_rule.this[k].lock_state if var.create }
}

output "statuses" {
  value = { for k in sort(keys(var.rbin_rules)) : k => aws_rbin_rule.this[k].status if var.create }
}
