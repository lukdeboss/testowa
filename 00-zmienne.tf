
variable "region" {
   default = "eu-west-1"
   description = "to tam gdzie ma byc zbudowany system"
}


variable "azs" {
   type = "list"
   default = ["${var.region}a", "${var.region}b", "${var.region}c" ]
}

