# Terrafoam w/ Proxmox | Infrastructure Provisioning

Steps:

1. Create a poject folder and create two files: `provider.tf` and `credentials.auto.tfvars`

> _Be sure not to store the `credentials.auto.tfvars` file in souce control._

2. Create the token secret in the Proxmox UI for use with Terrafoam

3. Initialize a Terrafoam project to pull the required extensions
```
terraform init
```

4. View the infrastructure to provisioned
```
terraform plan
```

5. Provision the planned infrastructure
```
terraform apply
```

6. Bring down the provisioned infrastructure
```
terraform destroy
```
