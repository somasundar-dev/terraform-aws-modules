
resource "aws_s3_bucket_policy" "website_bucket_policy" {
  bucket = data.aws_s3_bucket.website_bucket.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          AWS = aws_cloudfront_origin_access_identity.cloudfront_oai.iam_arn
        }
        Action   = "s3:GetObject"
        Resource = "${data.aws_s3_bucket.website_bucket.arn}/*"
      }
    ]
  })
}
