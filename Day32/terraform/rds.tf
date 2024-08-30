resource "aws_db_subnet_group" "nency_db_subnet_group" {
  name       = "nency-db-subnet-group"
  subnet_ids = [aws_subnet.private_subnet_a.id, aws_subnet.private_subnet_b.id]
  tags = {
    Name = "nency-db-subnet-group"
  }
}

resource "aws_db_instance" "nency_rds" {
  identifier             = "nency-rds"
  engine                 = "mysql"
  instance_class         = "db.t3.micro"
  allocated_storage      = 20
  username               = "admin"
  password               = var.db_password
  db_subnet_group_name   = aws_db_subnet_group.nency_db_subnet_group.name
  vpc_security_group_ids = [aws_security_group.db_sg.id]
  skip_final_snapshot    = true

  tags = {
    Name = "nency-rds"
  }
}
