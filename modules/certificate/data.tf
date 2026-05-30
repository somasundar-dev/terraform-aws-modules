data "aws_route53_zone" "domain_zone" {
  name = var.domain_name
}
