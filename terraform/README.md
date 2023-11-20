<!-- BEGIN_TF_DOCS -->

## About
This terraform code will create cloudfront distribution pointing to a private s3 with versioning, taking care of creating cloudfront, s3 bucket and the IAM policies to allow cloudfront only to access objects in s3.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.6.4 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.26.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cloudfront_to_s3"></a> [cloudfront\_to\_s3](#module\_cloudfront\_to\_s3) | ./modules/cloudfront_to_s3 | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudfront_to_s3_map"></a> [cloudfront\_to\_s3\_map](#input\_cloudfront\_to\_s3\_map) | The key->value combo of the url-path and respective bucket | `map(string)` | <pre>{<br>  "auth": "bucket1",<br>  "customers": "bucket3",<br>  "info": "bucket2"<br>}</pre> | no |
| <a name="input_env_name"></a> [env\_name](#input\_env\_name) | the environment you want to deploy | `string` | `"dev"` | no |
| <a name="input_region"></a> [region](#input\_region) | The AWS Region to use | `string` | `"eu-west-1"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->