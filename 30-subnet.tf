

resource "aws_subnet" "jeden" {
  vpc_id = aws_vpc.vpc1.id
  cidr_block = "10.0.1.0/24"
}


resource "aws_subnet" "dwa" {
  vpc_id = aws_vpc.vpc1.id
  cidr_block = "10.0.2.0/24"
}



