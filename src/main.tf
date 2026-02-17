# L'appel au module RÉSEAU
module "network" {
  source = "./modules/network"

  vpc_name = var.vpc_name
  vpc_cidr = var.vpc_cidr

  # On lui passe la nouvelle variable pour le SSH :
  allowed_ssh_cidr = var.allowed_ssh_cidr

  common_tags = local.common_tags

  subnets = {
    "a" = { cidr = var.subnet_a_cidr, az = local.az_a }
    "b" = { cidr = var.subnet_b_cidr, az = local.az_b }
  }
}

# L'appel au module INSTANCE (Serveur A)
module "serveur_web_a" {
  source = "./modules/instance"

  instance_name = var.instance_a_name
  ami_id        = data.aws_ami.al2023.id
  instance_type = var.instance_type
  az            = local.az_a
  volume_count  = var.volume_count

  subnet_id = module.network.subnet_ids["a"]
  sg_ids    = [module.network.instance_sg_id]

  common_tags = local.common_tags
}

# L'appel au module INSTANCE (Serveur B)
module "serveur_web_b" {
  source = "./modules/instance"

  instance_name = var.instance_b_name
  ami_id        = data.aws_ami.al2023.id
  instance_type = var.instance_type
  az            = local.az_b
  volume_count  = var.volume_count

  subnet_id = module.network.subnet_ids["b"]
  sg_ids    = [module.network.instance_sg_id]

  common_tags = local.common_tags
}

# L'appel au module S3
module "stockage_documents" {
  source = "./modules/s3"

  # On utilise le préfixe défini dans ton local.tf (ex: "atelier01")
  bucket_prefix = local.name_prefix
  common_tags   = local.common_tags
}