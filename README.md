# Atelier Terraform AWS (Paris)

Ce dépôt contient :
- une recette Terraform complète (sans `count`/`for_each`, sans modules)
- une documentation MkDocs
- une CI GitHub Actions : `terraform fmt/validate` + `tflint` + `tfsec`
- une CI GitHub Actions pour publier la doc MkDocs sur GitHub Pages

## Démarrage

```bash
terraform init
terraform fmt -recursive
terraform validate
terraform plan
```

> Pour déployer, vous aurez besoin d'identifiants AWS (variables d'environnement `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`, etc.).

## Documentation (MkDocs)

En local :

```bash
python -m venv .venv
source .venv/bin/activate
pip install -r requirements-docs.txt
mkdocs serve
```

La publication sur GitHub Pages se fait via le workflow `mkdocs-pages.yml`.
