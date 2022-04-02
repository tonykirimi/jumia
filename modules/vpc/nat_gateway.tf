resource "aws_nat_gateway" "Pub-nat" {
  allocation_id = aws_eip.nat_gw.id
  subnet_id     = aws_subnet.public_subnets[0].id

  tags = merge(local.common_tags, {

    Name          = "Nat-GW-01"
    Creation_date = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
  })
  depends_on = [aws_internet_gateway.gw]
}