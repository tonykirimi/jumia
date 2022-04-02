resource "aws_route_table_association" "public-subnets" {
  depends_on = [
    aws_vpc.jumia,
    aws_subnet.public_subnets
  ]
  count          = length(aws_subnet.public_subnets)
  subnet_id      = aws_subnet.public_subnets[count.index].id
  route_table_id = aws_route_table.pub-rtbl.id
}
