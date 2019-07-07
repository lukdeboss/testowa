# edytuj to przez v



# Create a VPC
resource "aws_vpc" "vpc1" {
  cidr_block = "10.0.0.0/16"
  # instance_tenancy = "default"
  # tags {
  #    jakas = "taka"
  #    inna  = "calkowicie"
  # }
}


# dodanie drugiego bloku CIDR
resource "aws_vpc_ipv4_cidr_block_association" "cidr2" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = "172.2.0.0/16"
}

# nie chce tego przyjac 
# # dodanie drugiego bloku CIDR
# resource "aws_vpc_ipv4_cidr_block_association" "cidr3" {
#   vpc_id     = aws_vpc.vpc1.id
#   cidr_block = "192.168.222.0/24"
# }


