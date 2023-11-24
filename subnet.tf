resource "aws_subnet" "public_1" {
  vpc_id                                      = aws_vpc.main.id
  availability_zone                           = data.aws_availability_zones.current.names[0]
  cidr_block                                  = "10.0.0.0/20"
  enable_resource_name_dns_a_record_on_launch = true

  tags = {
    Name                     = "Public-1"
    "kubernetes.io/role/elb" = 1
  }
}

resource "aws_subnet" "public_2" {
  vpc_id                                      = aws_vpc.main.id
  availability_zone                           = data.aws_availability_zones.current.names[1]
  cidr_block                                  = "10.0.16.0/20"
  enable_resource_name_dns_a_record_on_launch = true

  tags = {
    Name                     = "Public-2"
    "kubernetes.io/role/elb" = 1
  }
}

resource "aws_subnet" "public_3" {
  vpc_id                                      = aws_vpc.main.id
  availability_zone                           = data.aws_availability_zones.current.names[2]
  cidr_block                                  = "10.0.32.0/20"
  enable_resource_name_dns_a_record_on_launch = true

  tags = {
    Name                     = "Public-3"
    "kubernetes.io/role/elb" = 1
  }
}

resource "aws_subnet" "public_4" {
  vpc_id                                      = aws_vpc.main.id
  availability_zone                           = data.aws_availability_zones.current.names[3]
  cidr_block                                  = "10.0.48.0/20"
  enable_resource_name_dns_a_record_on_launch = true

  tags = {
    Name                     = "Public-4"
    "kubernetes.io/role/elb" = 1
  }
}

resource "aws_subnet" "private_1" {
  vpc_id                                      = aws_vpc.main.id
  availability_zone                           = data.aws_availability_zones.current.names[0]
  cidr_block                                  = "10.0.64.0/20"
  enable_resource_name_dns_a_record_on_launch = true

  tags = {
    Name                              = "Private-1"
    "kubernetes.io/role/internal-elb" = "1" # Needed for load balancers
  }
}

resource "aws_subnet" "private_2" {
  vpc_id                                      = aws_vpc.main.id
  availability_zone                           = data.aws_availability_zones.current.names[1]
  cidr_block                                  = "10.0.80.0/20"
  enable_resource_name_dns_a_record_on_launch = true

  tags = {
    Name                              = "Private-2"
    "kubernetes.io/role/internal-elb" = "1" # Needed for load balancers
  }
}

resource "aws_subnet" "private_3" {
  vpc_id                                      = aws_vpc.main.id
  availability_zone                           = data.aws_availability_zones.current.names[2]
  cidr_block                                  = "10.0.96.0/20"
  enable_resource_name_dns_a_record_on_launch = true

  tags = {
    Name                              = "Private-3"
    "kubernetes.io/role/internal-elb" = "1" # Needed for load balancers
  }
}

resource "aws_subnet" "private_4" {
  vpc_id                                      = aws_vpc.main.id
  availability_zone                           = data.aws_availability_zones.current.names[3]
  cidr_block                                  = "10.0.112.0/20"
  enable_resource_name_dns_a_record_on_launch = true

  tags = {
    Name                              = "Private-4"
    "kubernetes.io/role/internal-elb" = "1" # Needed for load balancers
  }
}