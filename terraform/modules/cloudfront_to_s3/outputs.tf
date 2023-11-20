output "cloudfront_url_to_bucket" {
  value = "${aws_cloudfront_distribution.iofinnet.domain_name} -> ${aws_s3_bucket.iofinnet.bucket}"
  description = "Cloudfront url pointing to s3 bucket"
}
