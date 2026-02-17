<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 6.32.1 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.8.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.32.1 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.8.1 |

## Resources

| Name | Type |
|------|------|
| [aws_ebs_volume.a_data_1](https://registry.terraform.io/providers/hashicorp/aws/6.32.1/docs/resources/ebs_volume) | resource |
| [aws_ebs_volume.a_data_2](https://registry.terraform.io/providers/hashicorp/aws/6.32.1/docs/resources/ebs_volume) | resource |
| [aws_ebs_volume.b_data_1](https://registry.terraform.io/providers/hashicorp/aws/6.32.1/docs/resources/ebs_volume) | resource |
| [aws_ebs_volume.b_data_2](https://registry.terraform.io/providers/hashicorp/aws/6.32.1/docs/resources/ebs_volume) | resource |
| [aws_instance.instance_a](https://registry.terraform.io/providers/hashicorp/aws/6.32.1/docs/resources/instance) | resource |
| [aws_instance.instance_b](https://registry.terraform.io/providers/hashicorp/aws/6.32.1/docs/resources/instance) | resource |
| [aws_internet_gateway.igw](https://registry.terraform.io/providers/hashicorp/aws/6.32.1/docs/resources/internet_gateway) | resource |
| [aws_route.default_inet](https://registry.terraform.io/providers/hashicorp/aws/6.32.1/docs/resources/route) | resource |
| [aws_route_table.public](https://registry.terraform.io/providers/hashicorp/aws/6.32.1/docs/resources/route_table) | resource |
| [aws_route_table_association.a](https://registry.terraform.io/providers/hashicorp/aws/6.32.1/docs/resources/route_table_association) | resource |
| [aws_route_table_association.b](https://registry.terraform.io/providers/hashicorp/aws/6.32.1/docs/resources/route_table_association) | resource |
| [aws_s3_bucket.docs](https://registry.terraform.io/providers/hashicorp/aws/6.32.1/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_public_access_block.docs](https://registry.terraform.io/providers/hashicorp/aws/6.32.1/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.docs](https://registry.terraform.io/providers/hashicorp/aws/6.32.1/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |
| [aws_s3_bucket_versioning.docs](https://registry.terraform.io/providers/hashicorp/aws/6.32.1/docs/resources/s3_bucket_versioning) | resource |
| [aws_security_group.instance_sg](https://registry.terraform.io/providers/hashicorp/aws/6.32.1/docs/resources/security_group) | resource |
| [aws_subnet.subnet_a](https://registry.terraform.io/providers/hashicorp/aws/6.32.1/docs/resources/subnet) | resource |
| [aws_subnet.subnet_b](https://registry.terraform.io/providers/hashicorp/aws/6.32.1/docs/resources/subnet) | resource |
| [aws_volume_attachment.a_attach_1](https://registry.terraform.io/providers/hashicorp/aws/6.32.1/docs/resources/volume_attachment) | resource |
| [aws_volume_attachment.a_attach_2](https://registry.terraform.io/providers/hashicorp/aws/6.32.1/docs/resources/volume_attachment) | resource |
| [aws_volume_attachment.b_attach_1](https://registry.terraform.io/providers/hashicorp/aws/6.32.1/docs/resources/volume_attachment) | resource |
| [aws_volume_attachment.b_attach_2](https://registry.terraform.io/providers/hashicorp/aws/6.32.1/docs/resources/volume_attachment) | resource |
| [aws_vpc.main](https://registry.terraform.io/providers/hashicorp/aws/6.32.1/docs/resources/vpc) | resource |
| [random_id.bucket_suffix](https://registry.terraform.io/providers/hashicorp/random/3.8.1/docs/resources/id) | resource |
| [aws_ami.al2023](https://registry.terraform.io/providers/hashicorp/aws/6.32.1/docs/data-sources/ami) | data source |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/6.32.1/docs/data-sources/availability_zones) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allowed_ssh_cidr"></a> [allowed\_ssh\_cidr](#input\_allowed\_ssh\_cidr) | CIDR autorisé à se connecter en SSH (laboratoire). | `string` | `"0.0.0.0/0"` | no |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | Région AWS cible. | `string` | `"eu-west-3"` | no |
| <a name="input_deployment_role"></a> [deployment\_role](#input\_deployment\_role) | ARN du role de deployment. | `string` | n/a | yes |
| <a name="input_ebs_volume_size_gb"></a> [ebs\_volume\_size\_gb](#input\_ebs\_volume\_size\_gb) | Taille des disques EBS additionnels (en Go). | `number` | `8` | no |
| <a name="input_ebs_volume_type"></a> [ebs\_volume\_type](#input\_ebs\_volume\_type) | Type des volumes EBS. | `string` | `"gp3"` | no |
| <a name="input_identity_center_region"></a> [identity\_center\_region](#input\_identity\_center\_region) | Home region IAM Identity Center. | `string` | `"eu-central-1"` | no |
| <a name="input_instance_a_name"></a> [instance\_a\_name](#input\_instance\_a\_name) | Nom de l'instance en AZ #1. | `string` | `"web-a"` | no |
| <a name="input_instance_b_name"></a> [instance\_b\_name](#input\_instance\_b\_name) | Nom de l'instance en AZ #2. | `string` | `"web-b"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Type d'instance EC2. | `string` | `"t3.micro"` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Nom logique du projet (sert de préfixe de nommage). | `string` | `"atelier01"` | no |
| <a name="input_subnet_a_cidr"></a> [subnet\_a\_cidr](#input\_subnet\_a\_cidr) | CIDR du subnet en AZ #1. | `string` | `"10.10.1.0/24"` | no |
| <a name="input_subnet_b_cidr"></a> [subnet\_b\_cidr](#input\_subnet\_b\_cidr) | CIDR du subnet en AZ #2. | `string` | `"10.10.2.0/24"` | no |
| <a name="input_tags_course"></a> [tags\_course](#input\_tags\_course) | Tag Course à appliquer partout. | `string` | `"TerraformAWS"` | no |
| <a name="input_tags_owner"></a> [tags\_owner](#input\_tags\_owner) | Tag Owner à appliquer partout. | `string` | `"John Doe"` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | CIDR du VPC. | `string` | `"10.10.0.0/16"` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Nom du VPC. | `string` | `"vpc-atelier01"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_availability_zones_used"></a> [availability\_zones\_used](#output\_availability\_zones\_used) | n/a |
| <a name="output_instance_a_public_ip"></a> [instance\_a\_public\_ip](#output\_instance\_a\_public\_ip) | n/a |
| <a name="output_instance_b_public_ip"></a> [instance\_b\_public\_ip](#output\_instance\_b\_public\_ip) | n/a |
| <a name="output_region"></a> [region](#output\_region) | n/a |
| <a name="output_s3_docs_bucket_name"></a> [s3\_docs\_bucket\_name](#output\_s3\_docs\_bucket\_name) | n/a |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | n/a |
<!-- END_TF_DOCS -->