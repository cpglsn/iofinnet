locals {
  combined_strings = "${keys(var.cloudfront_to_s3_map)[0]}_to_${values(var.cloudfront_to_s3_map)[0]}"
}

locals {
  s3_name = values(var.cloudfront_to_s3_map)[0]
}
