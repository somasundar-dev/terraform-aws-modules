
resource "aws_s3_bucket" "website" {
  bucket = "${var.project_name}-site-${var.environment}-${var.region}"
}

resource "aws_s3_bucket_public_access_block" "access_policy" {
  bucket = aws_s3_bucket.website.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_versioning" "website_versioning" {
  bucket = aws_s3_bucket.website.id
  versioning_configuration { status = "Enabled" }
}

