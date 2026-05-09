variable "project" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}

variable "eks_version" {
}

variable "enable_blue" {
    type    = bool
}

variable "eks_nodegroup_blue_version" {
}

variable "enable_green" {
    type    = bool
}

variable "eks_nodegroup_green_version" {
}