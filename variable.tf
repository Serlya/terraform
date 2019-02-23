variable "region" {
default = "us-east-1"
}
variable "vpc" {
default = "10.0.0.0/16"
description = "the vpc cdir"
}
variable "public" {
default = "10.0.1.0/24"
description = "the public cdir"
}
variable "private" {
default = "10.0.2.0/24"
description = "the private cdir"
}
variable "publicaz" {
default =  "us-east-1a"
description = "the public availability zone"
}
variable "privateaz" {
default =  "us-east-1b"
description = "the private availability zone"
}
variable "ami" {
default =  "ami-0080e4c5bc078760e"
description = "the nginx ami"
}
variable "instance_type" {
default =  "t2.micro"
description = "the nginx instance type"
}
variable "key_name" {
default =  "terraform"
description = "the nginx key pair"
}


