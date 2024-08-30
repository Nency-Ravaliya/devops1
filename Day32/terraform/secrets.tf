resource "aws_secretsmanager_secret" "nency_db_secret" {
  name = "nency_db_secret1"
}

resource "aws_secretsmanager_secret_version" "nency_db_secret_version" {
  secret_id = aws_secretsmanager_secret.nency_db_secret.id
  secret_string = jsonencode({
    password = var.db_password
  })
}
