resource "aws_s3_bucket" "iofinnet" {
  bucket = local.s3_name
}

resource "aws_s3_bucket_public_access_block" "iofinnet" {
  bucket                  = aws_s3_bucket.iofinnet.bucket
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "iofinnet" {
  bucket = aws_s3_bucket.iofinnet.bucket
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_versioning" "iofinnet" {
  bucket = aws_s3_bucket.iofinnet.bucket
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_policy" "iofinnet" {
  depends_on = [data.aws_iam_policy_document.iofinnet]

  bucket = aws_s3_bucket.iofinnet.id
  policy = data.aws_iam_policy_document.iofinnet.json
}
