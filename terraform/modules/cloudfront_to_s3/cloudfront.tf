resource "aws_cloudfront_origin_access_control" "iofinnet" {
  name                              = local.combined_strings
  origin_access_control_origin_type = "s3"
  signing_behavior                  = "always"
  signing_protocol                  = "sigv4"
}

resource "aws_cloudfront_distribution" "iofinnet" {
  depends_on = [
    aws_s3_bucket.iofinnet,
    aws_cloudfront_origin_access_control.iofinnet
  ]

  enabled     = true
  price_class = "PriceClass_100"

  default_cache_behavior {
    allowed_methods        = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cached_methods         = ["GET", "HEAD"]
    target_origin_id       = aws_s3_bucket.iofinnet.id
    viewer_protocol_policy = "allow-all"

    forwarded_values {
      query_string = false

      cookies {
        forward = "none"
      }
    }
  }

  origin {
    domain_name              = aws_s3_bucket.iofinnet.bucket_regional_domain_name
    origin_id                = aws_s3_bucket.iofinnet.id
    origin_access_control_id = aws_cloudfront_origin_access_control.iofinnet.id
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
      locations        = []
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }
}
