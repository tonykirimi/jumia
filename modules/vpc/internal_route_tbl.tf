resource "aws_route_table" "private-rtbl" {
  depends_on = [
    aws_vpc.jumia
  ]
  vpc_id = aws_vpc.jumia.id

  route {
    cidr_block = var.Cidr
    gateway_id = aws_nat_gateway.Pub-nat.id
  }

  tags = merge(local.common_tags, {

    Name          = "private_Route_Tble"
    Creation_date = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
  })
}
