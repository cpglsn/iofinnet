<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.6.4 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.26.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.26.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudfront_distribution.iofinnet](https://registry.terraform.io/providers/hashicorp/aws/5.26.0/docs/resources/cloudfront_distribution) | resource |
| [aws_cloudfront_origin_access_control.iofinnet](https://registry.terraform.io/providers/hashicorp/aws/5.26.0/docs/resources/cloudfront_origin_access_control) | resource |
| [aws_s3_bucket.iofinnet](https://registry.terraform.io/providers/hashicorp/aws/5.26.0/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_policy.iofinnet](https://registry.terraform.io/providers/hashicorp/aws/5.26.0/docs/resources/s3_bucket_policy) | resource |
| [aws_s3_bucket_public_access_block.iofinnet](https://registry.terraform.io/providers/hashicorp/aws/5.26.0/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.iofinnet](https://registry.terraform.io/providers/hashicorp/aws/5.26.0/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |
| [aws_s3_bucket_versioning.iofinnet](https://registry.terraform.io/providers/hashicorp/aws/5.26.0/docs/resources/s3_bucket_versioning) | resource |
| [aws_iam_policy_document.iofinnet](https://registry.terraform.io/providers/hashicorp/aws/5.26.0/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudfront_to_s3_map"></a> [cloudfront\_to\_s3\_map](#input\_cloudfront\_to\_s3\_map) | The key->value combo of the url and respective bucket | `map(string)` | `{}` | no |
| <a name="input_env_name"></a> [env\_name](#input\_env\_name) | the environment you want to deploy must be dev, prod or staging | `string` | `"dev"` | no |
| <a name="input_region"></a> [region](#input\_region) | The AWS Region to use | `string` | `"eu-west-1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloudfront_url_to_bucket"></a> [cloudfront\_url\_to\_bucket](#output\_cloudfront\_url\_to\_bucket) | Cloudfront url pointing to s3 bucket |
<!-- END_TF_DOCS -->