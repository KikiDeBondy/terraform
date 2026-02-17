output "region" {
  value = var.aws_region
}

output "availability_zones_used" {
  value = {
    az_a = local.az_a
    az_b = local.az_b
  }
}

# On demande le vpc_id au module network
output "vpc_id" {
  value = module.network.vpc_id
}

# On demande l'IP publique au module serveur_web_a
output "instance_a_public_ip" {
  value = module.serveur_web_a.public_ip
}

# On demande l'IP publique au module serveur_web_b
output "instance_b_public_ip" {
  value = module.serveur_web_b.public_ip
}

# On demande le nom du bucket au module S3
output "s3_docs_bucket_name" {
  value = module.stockage_documents.bucket_name
}