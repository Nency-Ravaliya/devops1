# Network Module
module "network" {
  source           = "./modules/network"
  vpc_cidr         = "10.0.0.0/16"
  public_subnets   = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets  = ["10.0.3.0/24", "10.0.4.0/24"]
  allowed_ssh_cidr = var.allowed_ssh_cidr
}

# Compute Module
module "compute" {
  source                   = "./modules/compute"
  vpc_id                   = module.network.vpc_id
  public_subnet_ids        = module.network.public_subnet_ids
  master_security_group_id = module.network.master_security_group_id
  worker_security_group_id = module.network.worker_security_group_id
  key_pair_name            = var.key_pair_name
  master_instance_type     = var.master_instance_type # Separate instance type for master
  worker_instance_type     = var.worker_instance_type # Separate instance type for workers
  ami_id                   = "ami-0162fe8bfebb6ea16"  # Update as per your region
}

# S3 Module
module "s3" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
  region      = var.aws_region
  acl         = "public-read"
}
