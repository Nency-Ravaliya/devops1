resource "aws_instance" "master" {
  ami                    = var.ami_id
  instance_type          = var.master_instance_type
  subnet_id              = element(var.public_subnet_ids, 0)
  vpc_security_group_ids = [var.master_security_group_id]
  key_name               = var.key_pair_name

  tags = {
    Name = "nency1-k8s-master-node"
  }
}

resource "aws_instance" "workers" {
  count                  = 2
  ami                    = var.ami_id
  instance_type          = var.worker_instance_type
  subnet_id              = element(var.public_subnet_ids, count.index + 1)
  vpc_security_group_ids = [var.worker_security_group_id]
  key_name               = var.key_pair_name

  tags = {
    Name = "nency1-k8s-worker-node-${count.index + 1}"
  }
}
