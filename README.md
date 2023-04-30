# terraform-aws-rbin

Provisions AWS Recycle Bin resources.

Note that use of this module is intended to create resources which will incur monetary charges on your AWS bill. Run `terraform destroy` when you no longer need these resources.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.65 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.65 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_rbin_rule.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/rbin_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Whether or not to create the rbin rule(s). | `bool` | `true` | no |
| <a name="input_rbin_rules"></a> [rbin\_rules](#input\_rbin\_rules) | A map of rbin rules to create. | `any` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ids"></a> [ids](#output\_ids) | n/a |
| <a name="output_lock_end_times"></a> [lock\_end\_times](#output\_lock\_end\_times) | n/a |
| <a name="output_lock_states"></a> [lock\_states](#output\_lock\_states) | n/a |
| <a name="output_statuses"></a> [statuses](#output\_statuses) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
