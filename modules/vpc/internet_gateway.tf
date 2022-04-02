resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.jumia.id

  tags = merge(local.common_tags, {

    Name          = "IGW-01"
    Creation_date = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
  })
}
