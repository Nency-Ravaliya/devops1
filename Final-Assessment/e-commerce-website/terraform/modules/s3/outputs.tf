output "bucket_name" {
  value = aws_s3_bucket.static_assets.id
}

output "bucket_arn" {
  value = aws_s3_bucket.static_assets.arn
}

output "bucket_endpoint" {
  value = aws_s3_bucket.static_assets.website_endpoint
}
