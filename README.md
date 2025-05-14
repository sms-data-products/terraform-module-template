# terraform-module-template

<!-- Description of module -->
This module creates example resources for demonstration purposes

## References
<!-- Include links to external references -->
N/A

## Table of Contents
- [Usage](#usage)
- [Requirements](#requirements)
- [Providers](#providers)
- [Modules](#modules)
- [Resources](#resources)
- [Inputs](#inputs)
- [Outputs](#outputs)
- [Contributing](#contributing)

## Usage
<!-- Describe manual and/or automated usage steps -->
See the [examples](/examples) folder for examples of how to utilize this module with Terraform and Terragrunt.

### Pre-requisites
<!-- Describe external dependencies or pre-requisites -->
N/A

### Quick Start
```bash
terraform init
terraform plan
terraform apply
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.11.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.97.0 |
| <a name="requirement_null"></a> [null](#requirement\_null) | ~> 3.2.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.97.0 |
| <a name="provider_null"></a> [null](#provider\_null) | 3.2.4 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [null_resource.foo](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [aws_partition.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_example"></a> [example](#input\_example) | Example variable | `string` | `"default value"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_example_value"></a> [example\_value](#output\_example\_value) | Example variable |
| <a name="output_null_resource_id"></a> [null\_resource\_id](#output\_null\_resource\_id) | An arbitrary value that changes each time the resource is replaced. |
| <a name="output_partition"></a> [partition](#output\_partition) | AWS partition in which Terraform is working |
<!-- END_TF_DOCS -->

## Contributing
Code quality and security will be validated before merge requests are accepted.

### Tools
These tools are used to ensure validation and standardization of Terraform deployments

#### Must be installed
- [pre-commit](https://github.com/gruntwork-io/pre-commit/releases)
- [terraform-docs](https://github.com/terraform-docs/terraform-docs)
- [tflint](https://github.com/terraform-linters/tflint)
- [trivy](https://trivy.dev/latest/docs/)

#### Provided by Terraform
- [terraform fmt](https://www.terraform.io/docs/commands/fmt.html)
- [terraform validate](https://www.terraform.io/docs/commands/validate.html)

For more information see - [pre-commit-hooks-for-terraform](https://medium.com/slalom-build/pre-commit-hooks-for-terraform-9356ee6db882)

### Setting up Trivy pre-commit hook
Trivy is used to scan Terraform configurations for potential security issues. The pre-commit hook is configured in the `.pre-commit-config.yaml` file using [pre-commit-trivy](https://github.com/mxab/pre-commit-trivy):

```yaml
repos:
- repo: https://github.com/mxab/pre-commit-trivy.git
  rev: v0.15.0
  hooks:
  - id: trivyfs-docker
    args:
      - --skip-dirs
      - ./tests
      - . # scan path
  - id: trivyconfig-docker
    args:
      - --skip-dirs
      - ./tests
      - . # scan path
```

This configuration:
- Uses Docker to run trivy scans (no local installation needed)
- Performs both filesystem and configuration scanning
- Skips the `tests` directory
- Creates a local `.pre-commit-trivy-cache` directory for caching

### To submit a merge request
```bash
git checkout -b <branch name>
pre-commit autoupdate
pre-commit run -a
git commit -a -m 'Add new feature'
git push origin <branch name>
```
Optionally run the following to automate the execution of pre-commit on every git commit.
```bash
pre-commit install
```

# License
Copyright (c) 2025

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
