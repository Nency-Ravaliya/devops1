provider "aws" {
  region = "us-west-1"
}

variable "ami_id" {
  default = "ami-0ecaad63ed3668fca"
}

variable "db_password" {
  type      = string
  sensitive = true
}
