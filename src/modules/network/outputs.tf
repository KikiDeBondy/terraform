output "vpc_id" {
  value = aws_vpc.this.id
}

output "subnet_ids" {
  value = { for k, v in aws_subnet.this : k => v.id }
}

output "instance_sg_id" {
  description = "L'ID du Security Group généré par le réseau"
  value       = aws_security_group.instance_sg.id
}