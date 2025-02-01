### Module VPC

* Backend configuration mean the gcs configuration should be outside of the sub modules , it has to be root modules `main.tf` file or it  can be in `backend.tf` seperate file. 

```
  terraform init
  terraform validate
  terraform fmt
  terraform plan -varfile-dev.tfvars
  terraform apply -var-file=dev.tfvars -auto-approve
```
