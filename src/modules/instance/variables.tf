variable "instance_name" {
  description = "Le nom de l'instance (ex: web-a)"
  type        = string
}

variable "ami_id" {
  description = "L'ID de l'image Amazon Linux"
  type        = string
}

variable "instance_type" {
  description = "La taille de la machine (ex: t3.micro)"
  type        = string
}

variable "subnet_id" {
  description = "L'ID du sous-réseau où placer l'instance"
  type        = string
}

variable "az" {
  description = "La zone de disponibilité (nécessaire pour créer les disques EBS au même endroit)"
  type        = string
}

variable "sg_ids" {
  description = "Liste des IDs des Security Groups à attacher"
  type        = list(string)
}

variable "volume_count" {
  description = "Combien de disques additionnels on veut ?"
  type        = number
  default     = 0 # Facultatif : si on ne dit rien, 0 disque.
}

variable "volume_size" {
  description = "Taille de chaque disque en Go"
  type        = number
  default     = 8
}

variable "common_tags" {
  description = "Les fameux Post-it d'entreprise"
  type        = map(string)
}