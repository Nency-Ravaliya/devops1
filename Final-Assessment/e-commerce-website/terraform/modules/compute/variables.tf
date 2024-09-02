variable "vpc_id" {
  description = "VPC ID where instances will be deployed."
  type        = string
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs."
  type        = list(string)
}

variable "master_security_group_id" {
  description = "Security Group ID for master node."
  type        = string
}

variable "worker_security_group_id" {
  description = "Security Group ID for worker nodes."
  type        = string
}

variable "key_pair_name" {
  description = "Name of the existing EC2 key pair to use."
  type        = string
}

variable "master_instance_type" {
  description = "Instance type for the master node"
  type        = string
}

variable "worker_instance_type" {
  description = "Instance type for the worker nodes"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2 instances."
  default     = "ami-0162fe8bfebb6ea16" # Ubuntu 20.04 LTS in ap-northeast-1
}
