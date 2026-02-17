output "bucket_name" {
  description = "Le nom final généré pour le bucket S3"
  value       = aws_s3_bucket.this.bucket
}