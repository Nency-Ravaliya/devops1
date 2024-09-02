output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}

output "master_security_group_id" {
  value = aws_security_group.master_sg.id
}

output "worker_security_group_id" {
  value = aws_security_group.worker_sg.id
}
