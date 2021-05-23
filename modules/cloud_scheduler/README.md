<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | =0.14.9 |
| google | 3.66.1 |
| google-beta | 3.66.1 |

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cloud\_schduler\_config | Map of configs for the scheduler. | `any` | n/a | yes |
| environment | The GCP envioment where the scheduler will be created. | `string` | n/a | yes |
| project\_id | (Required) The ID of the project where the cloud scheduler will be created. | `string` | n/a | yes |
| region | Region where the scheduler job resides. | `any` | n/a | yes |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
