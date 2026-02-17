variable "deployment_role" {
  description = "ARN du role de deployment."
  type        = string
}

variable "identity_center_region" {
  description = "Home region IAM Identity Center."
  type        = string
  default     = "eu-central-1"
}

variable "aws_region" {
  description = "Région AWS cible."
  type        = string
  default     = "eu-west-3" # Paris
}

variable "project_name" {
  description = "Nom logique du projet (sert de préfixe de nommage)."
  type        = string
  default     = "atelier01"
  validation {
    condition     = length(var.project_name) >= 3
    error_message = "project_name doit faire au moins 3 caractères."
  }
}

variable "vpc_name" {
  description = "Nom du VPC."
  type        = string
  default     = "vpc-atelier01"
}

variable "vpc_cidr" {
  description = "CIDR du VPC."
  type        = string
  default     = "10.10.0.0/16"
}

variable "subnet_a_cidr" {
  description = "CIDR du subnet en AZ #1."
  type        = string
  default     = "10.10.1.0/24"
}

variable "subnet_b_cidr" {
  description = "CIDR du subnet en AZ #2."
  type        = string
  default     = "10.10.2.0/24"
}

variable "instance_a_name" {
  description = "Nom de l'instance en AZ #1."
  type        = string
  default     = "web-a"
}

variable "instance_b_name" {
  description = "Nom de l'instance en AZ #2."
  type        = string
  default     = "web-b"
}

variable "instance_type" {
  description = "Type d'instance EC2."
  type        = string
  default     = "t3.micro"
}

variable "allowed_ssh_cidr" {
  description = "CIDR autorisé à se connecter en SSH (laboratoire)."
  type        = string
  default     = "0.0.0.0/0"
}

variable "ebs_volume_size_gb" {
  description = "Taille des disques EBS additionnels (en Go)."
  type        = number
  default     = 8
  validation {
    condition     = var.ebs_volume_size_gb >= 1
    error_message = "ebs_volume_size_gb doit être >= 1."
  }
}

variable "ebs_volume_type" {
  description = "Type des volumes EBS."
  type        = string
  default     = "gp3"
}

variable "tags_owner" {
  description = "Tag Owner à appliquer partout."
  type        = string
  default     = "John Doe"
}

variable "tags_course" {
  description = "Tag Course à appliquer partout."
  type        = string
  default     = "TerraformAWS"
}

variable "volume_count" {
  description = "Nombre de disques par instance"
  type        = number
  default     = 2
}