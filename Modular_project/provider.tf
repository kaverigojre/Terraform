variable "ami_value" {
  description = "value for ami image"
}

variable "instance_type_value" {
  description = "value for instance "
}


variable "subnet_id_value" {
   description = "value for subnet"
}


provider "aws" {
region = "ap-south-1"
  
}

resource "aws_instance" "this" {
    ami                     = var.ami_value
    instance_type           = var.instance_type_value
    subnet_id = var.subnet_id_value
}