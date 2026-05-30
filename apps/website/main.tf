module "certificate" {
  source = "../../modules/certificate"

  region      = var.region
  domain_name = var.domain_name
}

module "bucket" {
  source = "../../modules/s3"

  project_name = var.project_name
  environment  = var.environment
  region       = var.region
}

module "cloudfront" {
  source = "../../modules/cloudfront"

  region              = var.region
  domain_name         = var.domain_name
  bucket_name         = module.bucket.website_bucket
  acm_certificate_arn = module.certificate.certificate_arn
}
