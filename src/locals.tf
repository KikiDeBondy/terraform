data "aws_availability_zones" "available" {
  state = "available"
}

locals {
  name_prefix = var.project_name

  # On prend “les deux premières AZ disponibles” sans boucle.
  az_a = data.aws_availability_zones.available.names[0]
  az_b = data.aws_availability_zones.available.names[1]

  common_tags = {
    Owner   = var.tags_owner
    Course  = var.tags_course
    Project = var.project_name
  }
}
