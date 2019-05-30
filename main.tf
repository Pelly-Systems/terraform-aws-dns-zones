resource "aws_route53_zone" "public_zone" {
  name = "${var.domain_name}"
}

resource "aws_route53_zone" "private_zone" {
  name = "${var.private_domain_name}"
  dynamic "vpc" {
    for_each = var.private_zone_vpcs
    content {
      vpc_id = vpc.value.vpc_id
      vpc_region = vpc.value.vpc_region
    }
  }
}
