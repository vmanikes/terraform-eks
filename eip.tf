// You should technically create one NAT in each zone for redundancy
resource "aws_eip" "nat_1" {
  public_ipv4_pool = "amazon"
  domain           = "vpc"
  tags = {
    Name = "Chaitanya-Cloud-NAT-1"
  }
}
