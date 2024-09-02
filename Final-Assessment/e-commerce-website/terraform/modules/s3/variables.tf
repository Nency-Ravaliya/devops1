variable "bucket_name" {
  description = "Name of the S3 bucket."
  type        = string
}

variable "region" {
  description = "AWS region where the bucket will be created."
  type        = string
}

variable "acl" {
  description = "Canned ACL to apply."
  default     = "public-read"
}
