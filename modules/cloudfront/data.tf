data "aws_route53_zone" "domain_zone" {
  name = var.domain_name
}

data "aws_s3_bucket" "website_bucket" {
  bucket = var.bucket_name
}
