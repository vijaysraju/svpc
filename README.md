# Simple VPC
## Simple VPC is a three zone highly available VPC with six Subnets. Three public and three private Subnets. An IGW and Three NATs.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.19.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.19.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_subnet-addrs"></a> [subnet-addrs](#module\_subnet-addrs) | hashicorp/subnets/cidr | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_group.flow_logs_log_group](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/resources/cloudwatch_log_group) | resource |
| [aws_eip.nat-eip-az1](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/resources/eip) | resource |
| [aws_eip.nat-eip-az2](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/resources/eip) | resource |
| [aws_eip.nat-eip-az3](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/resources/eip) | resource |
| [aws_flow_log.vpc-flow_logs](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/resources/flow_log) | resource |
| [aws_iam_role.flow_logs_role](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/resources/iam_role) | resource |
| [aws_internet_gateway.igw](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/resources/internet_gateway) | resource |
| [aws_nat_gateway.az1-nat](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/resources/nat_gateway) | resource |
| [aws_nat_gateway.az2-nat](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/resources/nat_gateway) | resource |
| [aws_nat_gateway.az3-nat](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/resources/nat_gateway) | resource |
| [aws_route_table.az1-prv-rt](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/resources/route_table) | resource |
| [aws_route_table.az2-prv-rt](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/resources/route_table) | resource |
| [aws_route_table.az3-prv-rt](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/resources/route_table) | resource |
| [aws_route_table.public](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/resources/route_table) | resource |
| [aws_route_table_association.prv-az1-rts](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/resources/route_table_association) | resource |
| [aws_route_table_association.prv-az2-rts](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/resources/route_table_association) | resource |
| [aws_route_table_association.prv-az3-rts](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/resources/route_table_association) | resource |
| [aws_route_table_association.pub-az1-rts](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/resources/route_table_association) | resource |
| [aws_route_table_association.pub-az2-rts](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/resources/route_table_association) | resource |
| [aws_route_table_association.pub-az3-rts](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/resources/route_table_association) | resource |
| [aws_subnet.prv-az1](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/resources/subnet) | resource |
| [aws_subnet.prv-az2](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/resources/subnet) | resource |
| [aws_subnet.prv-az3](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/resources/subnet) | resource |
| [aws_subnet.pub-az1](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/resources/subnet) | resource |
| [aws_subnet.pub-az2](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/resources/subnet) | resource |
| [aws_subnet.pub-az3](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/resources/subnet) | resource |
| [aws_vpc.main](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/resources/vpc) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.flow_logs_assume_policy](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.flow_logs_policy](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/data-sources/iam_policy_document) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/5.19.0/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_name"></a> [account\_name](#input\_account\_name) | Default Account name | `string` | `"Networking"` | no |
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | Avaialbility Zones | `list(any)` | <pre>[<br>  "us-east-1a",<br>  "us-east-1b",<br>  "us-east-1c"<br>]</pre> | no |
| <a name="input_az"></a> [az](#input\_az) | Avaialbility Zone Text | `list(any)` | <pre>[<br>  "AZ1",<br>  "AZ2",<br>  "AZ3"<br>]</pre> | no |
| <a name="input_env"></a> [env](#input\_env) | Default Environment | `string` | `"VPN"` | no |
| <a name="input_project"></a> [project](#input\_project) | Default Project Name | `string` | `"VPN"` | no |
| <a name="input_region"></a> [region](#input\_region) | AWS Region to target | `string` | `"us-east-1"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags | `map(any)` | <pre>{<br>  "Owner": "Your Name"<br>}</pre> | no |
| <a name="input_tier"></a> [tier](#input\_tier) | Tiers | `list(any)` | <pre>[<br>  "PUB",<br>  "PRV"<br>]</pre> | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | Default VPC CIDR | `string` | `"10.0.0.0/16"` | no |

## Outputs

No outputs.
