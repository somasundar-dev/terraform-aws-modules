resource "aws_s3_bucket_object" "object" {
  key                    = var.key
  bucket                 = data.aws_s3_bucket.website_bucket.id
  source                 = var.source_path
  server_side_encryption = "AES256"
  etag                   = var.etag
  content_type           = var.content_type
}
