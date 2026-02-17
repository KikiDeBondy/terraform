variable "bucket_prefix" {
  description = "Le préfixe pour le nom du bucket (ex: atelier01)"
  type        = string
}

variable "common_tags" {
  description = "Les tags d'entreprise à appliquer"
  type        = map(string)
}