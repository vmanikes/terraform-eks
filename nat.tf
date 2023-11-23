resource "aws_nat_gateway" "nat_main" {
  allocation_id     = aws_eip.nat_1.allocation_id
  connectivity_type = "public"
  subnet_id         = aws_subnet.public_1.id
}