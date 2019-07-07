
variable "region" {
   default = "eu-west-1"
   description = "to tam gdzie ma byc zbudowany system"
}


locals {
   azs = ["${var.region}a", "${var.region}b", "${var.region}c" ]
}

