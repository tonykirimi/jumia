resource "aws_subnet" "public_subnets" {
  count                   = length(data.aws_availability_zones.available.names)
  vpc_id                  = aws_vpc.jumia.id
  cidr_block              = element(var.ALB_subnet_cidr_block, count.index)
  availability_zone       = data.aws_availability_zones.available.names[count.index]
  map_public_ip_on_launch = false
  tags = merge(local.common_tags,
    {

      Name          = join("-", [upper("public-subnet"), upper(substr(data.aws_availability_zones.available.names[count.index], 11, 11))])
      Creation_date = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())

  })
}
