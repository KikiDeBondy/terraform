# Atelier Terraform AWS

Ce dépôt fournit une **recette Terraform** simple et lisible (niveau débutant) :

- Région : **eu-west-3 (Paris)**
- 1 VPC + 2 subnets (2 AZ différentes)
- 2 EC2 (1 par subnet)
- 2 volumes EBS (8 Go) par instance
- 1 bucket S3
- Tags : `Owner=John Doe`, `Course=TerraformAWS`

## Objectifs pédagogiques

- Comprendre la structure d’un projet Terraform
- Lire et modifier des variables/locals
- Comprendre une CI de base (fmt/validate, TFLint, tfsec)
- Publier une documentation technique simple via MkDocs
