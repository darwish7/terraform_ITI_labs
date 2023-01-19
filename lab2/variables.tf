variable "vpc_cidr_block"{
    type = string
}

variable "vpc_name" {
  type = string
}
variable "subnet_cidr_block" {
    type = list
}

variable "subnet_name" {
    type = list
}
variable "igw_name" {
  type = string 
}

variable "cidr_block_public_source" {
  type = string
}

variable "route_table_name"{
    type = string
}

variable "natgw_name" {
  type = string
}

variable "ami_image" {
  type = string
}
variable "instance_type" {
  type = string
}
variable "public_ec2_name" {
  type = string
}
variable "private_ec2_name" {
  type = string
}