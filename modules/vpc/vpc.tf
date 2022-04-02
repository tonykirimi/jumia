resource "aws_vpc" "jumia" {
  cidr_block           = var.vpc_cidr_block
  instance_tenancy     = var.vpc_instance_tenancy
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames
  tags = merge(local.common_tags, {

    Name          = "jumia-assignment"
    Creation_date = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
  })
}