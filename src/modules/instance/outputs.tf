output "instance_id" {
  description = "L'ID de l'instance créée"
  value       = aws_instance.this.id
}

output "public_ip" {
  description = "L'adresse IP publique de l'instance"
  value       = aws_instance.this.public_ip
}