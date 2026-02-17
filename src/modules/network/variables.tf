variable "vpc_name" {
  description = "Le nom du VPC"
  type        = string
}

variable "vpc_cidr" {
  description = "Le bloc CIDR pour le VPC"
  type        = string
}

variable "subnets" {
  description = "Une map contenant les sous-réseaux à créer (CIDR et AZ)"
  type = map(object({
    cidr = string
    az   = string
  }))
}

variable "common_tags" {
  description = "Tags communs à appliquer à toutes les ressources"
  type        = map(string)
}

variable "allowed_ssh_cidr" {
  description = "CIDR autorisé à se connecter en SSH (ex: 0.0.0.0/0)"
  type        = string
}