// 128 64 32 16 8 4 2 1
resource "aws_vpc" "main" {
  cidr_block                           = "10.0.0.0/16"
  enable_dns_support                   = true
  enable_network_address_usage_metrics = true
  enable_dns_hostnames                 = true
  assign_generated_ipv6_cidr_block     = true
}
