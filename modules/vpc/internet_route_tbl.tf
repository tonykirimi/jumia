resource "aws_route_table" "pub-rtbl" {
  depends_on = [
    aws_vpc.jumia
  ]
  vpc_id = aws_vpc.jumia.id

  route {
    cidr_block = var.Cidr
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = merge(local.common_tags, {

    Name          = "Internet_Route_Tble"
    Creation_date = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
  })
}

