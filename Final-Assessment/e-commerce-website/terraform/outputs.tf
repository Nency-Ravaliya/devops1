output "vpc_id" {
  value = module.network.vpc_id
}

output "public_subnet_ids" {
  value = module.network.public_subnet_ids
}

output "master_public_ip" {
  value = module.compute.master_public_ip
}

output "worker_public_ips" {
  value = module.compute.worker_public_ips
}

output "s3_bucket_name" {
  value = module.s3.bucket_name
}

output "s3_bucket_arn" {
  value = module.s3.bucket_arn
}
