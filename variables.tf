variable "create" {
  description = "Whether or not to create the rbin rule(s)."
  type        = bool
  default     = true
}

variable "rbin_rules" {
  description = "A map of rbin rules to create."
  type        = any
  default     = {}
}
