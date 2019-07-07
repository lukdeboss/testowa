
variable "region" {
   default = "eu-west-1"
   description = "to tam gdzie ma byc zbudowany system"
}

data "aws_availability_zones" "azs" {
}



locals {
   azs = ["${var.region}a", "${var.region}b", "${var.region}c" ]
   subnets_public  = [ "10.1.10.0/24", "10.2.10.0/24", "10.3.10.0/24" ]
   azs2 = data.aws_availability_zones.azs.names
}



output "azsa" {
  value = "${locals.azs2}
}

