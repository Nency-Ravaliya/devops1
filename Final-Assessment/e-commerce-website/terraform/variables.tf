variable "aws_region" {
  description = "The AWS region to deploy resources in."
  default     = "ap-northeast-1"
}

variable "aws_profile" {
  description = "The AWS CLI profile to use."
  default     = "default"
}

variable "allowed_ssh_cidr" {
  description = "CIDR blocks allowed to access via SSH."
  default     = ["0.0.0.0/0"]
}

variable "key_pair_name" {
  description = "Name of the existing EC2 key pair to use."
  type        = string
}

variable "bucket_name" {
  description = "Name of the S3 bucket for static assets."
  default     = "nency1-ecommerce-static-assets-unique-identifier" # Ensure this is globally unique
}

variable "master_instance_type" {
  description = "EC2 instance type for the Kubernetes master node"
  type        = string
  default     = "t2.medium" # You can change this to your desired instance type
}

variable "worker_instance_type" {
  description = "EC2 instance type for the Kubernetes worker nodes"
  type        = string
  default     = "t2.micro" # You can change this to your desired instance type
}
