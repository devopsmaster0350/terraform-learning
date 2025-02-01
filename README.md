### Module VPC

* Backend configuration mean the gcs configuration should be outside of the sub modules , it has to be root modules `main.tf` file.

```
  terraform init
  terraform validate
  terraform fmt
  terraform plan -varfile-dev.tfvars
  terraform apply -var-file=dev.tfvars -auto-approve
```
