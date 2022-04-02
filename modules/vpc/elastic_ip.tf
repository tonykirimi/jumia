resource "aws_eip" "nat_gw" {
  vpc = var.NGW-01
  tags = merge(local.common_tags, {


    Name          = var.Elastic_ip_name
    Creation_date = local.Creation_date
  })
}