# Terraform Google Cloud Function  

This repo contains Terraform resource module for creating Cloud Scheduler  on Google Cloud Platform for setting up cron jobs. 

This module is available in [Datatonic Terraform Registry](https://registry.terraform.io/namespaces/teamdatatonic) 

## Prerequisites
- [Terraform](https://tfswitch.warrensbox.com/) 
- [Commitizen](https://github.com/commitizen/cz-cli)
- [precommit](https://pre-commit.com/)

### Local Setup 
- install pre-commit: `brew install pre-commit`.
- install the git hook scripts: `pre-commit install`.

## Usage
You can go to the examples folder for module usage, the usage of the resource modules could be like this in your own main.tf file:

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


### Contributing 
When committing code, use [Commitizen](https://github.com/commitizen/cz-cli).
This then allows us to setup semantic versioning using [Semantic Release](https://github.com/semantic-release/semantic-release) in CICD pipeline.

To install commitizen:
```bash
npm install -g commitizen
```
From now on, when commiting code, instead of `git commit`, run `cz -s`
