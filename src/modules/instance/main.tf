# Création de l'instance
resource "aws_instance" "this" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.sg_ids
  associate_public_ip_address = true # Pour qu'on puisse s'y connecter

  tags = merge(var.common_tags, {
    Name = var.instance_name
    AZ   = var.az
  })
}

# Création des disques dynamiquement
resource "aws_ebs_volume" "data" {
  # count va valoir var.volume_count (ex: 2). 
  # Terraform va créer data[0] et data[1]
  count = var.volume_count

  availability_zone = var.az
  size              = var.volume_size
  type              = "gp3"

  tags = merge(var.common_tags, {
    # count.index vaut 0, puis 1, etc. On fait +1 pour avoir "vol-1", "vol-2"
    Name     = "${var.instance_name}-data-${count.index + 1}"
    Instance = var.instance_name
  })
}

# Attachement des disques à l'instance
resource "aws_volume_attachment" "data_attach" {
  count = var.volume_count

  # element() prend un tableau et choisit l'élément à l'index donné.
  # data[0] ira sur /dev/sdf, data[1] sur /dev/sdg, etc.
  device_name = element(["/dev/sdf", "/dev/sdg", "/dev/sdh", "/dev/sdi"], count.index)

  volume_id   = aws_ebs_volume.data[count.index].id
  instance_id = aws_instance.this.id
}