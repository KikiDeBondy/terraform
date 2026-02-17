# CI Terraform (fmt/validate + TFLint + tfsec)

Workflow : `.github/workflows/terraform-ci.yml`

Étapes :
1. `terraform fmt -check`
2. `terraform init -backend=false`
3. `terraform validate`
4. `tflint --init` puis `tflint`
5. `tfsec` (en soft-fail pour débuter)
