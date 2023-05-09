# Azure VM with Terraform

Manage Azure resources with Terraform (inspired by [Get Started - Azure](https://developer.hashicorp.com/terraform/tutorials/azure-get-started)
and [Azure RM Provider Examples](https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples)).

## Steps

* Set environment variable to access to Azure (`.env.example` gives the variables to set)

```bash
az login
az ad sp create-for-rbac --name "<myusername>-tf-may2023" --role="Contributor" --scopes="/subscriptions/<subscription_id>"
```

* Get local files

```bash
terraform init
```

* Create `terraform.tfvars` with your variables

* Create and manage resources

```bash
terraform apply
```

* Delete resources

```bash
terraform destroy
```
