# On génère un suffixe aléatoire pour éviter les conflits de noms mondiaux sur S3
resource "random_id" "suffix" {
  byte_length = 4
}

# Création du bucket
resource "aws_s3_bucket" "this" {
  bucket = "${var.bucket_prefix}-docs-${random_id.suffix.hex}"

  tags = merge(var.common_tags, {
    Name = "${var.bucket_prefix}-docs"
  })
}

# RENFORCEMENT : Blocage total des accès publics
resource "aws_s3_bucket_public_access_block" "this" {
  bucket                  = aws_s3_bucket.this.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# RENFORCEMENT : Chiffrement par défaut
resource "aws_s3_bucket_server_side_encryption_configuration" "this" {
  bucket = aws_s3_bucket.this.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# Activation de l'historique des versions
resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.this.id
  versioning_configuration {
    status = "Enabled"
  }
}