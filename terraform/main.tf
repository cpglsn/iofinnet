# locals {
#   cloudfront_to_s3_map = {
#     for key, value in var.cloudfront_to_s3_map : key => "${value}-${var.env_name}"
#   }
# }

provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Environment = "${var.env_name}"
    }
  }
}

module "cloudfront_to_s3" {
  source = "./modules/cloudfront_to_s3"
  # version = "x.x.x"

  env_name = var.env_name

  # for_each = local.cloudfront_to_s3_map
  for_each = var.cloudfront_to_s3_map

  cloudfront_to_s3_map = {
    "${each.key}" = each.value
  }

}
