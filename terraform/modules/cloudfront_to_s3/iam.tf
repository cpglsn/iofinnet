data "aws_iam_policy_document" "iofinnet" {
  depends_on = [
    aws_cloudfront_distribution.iofinnet,
    aws_s3_bucket.iofinnet
  ]

  statement {
    sid     = local.combined_strings
    effect  = "Allow"
    actions = ["s3:GetObject"]

    principals {
      type        = "Service"
      identifiers = ["cloudfront.amazonaws.com"]
    }

    resources = ["arn:aws:s3:::${aws_s3_bucket.iofinnet.bucket}/*"]

    condition {
      test     = "StringEquals"
      variable = "AWS:SourceArn"
      values   = [aws_cloudfront_distribution.iofinnet.arn]
    }
  }
}
