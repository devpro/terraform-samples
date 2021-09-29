# Nginx in Docker with Terraform

Run latest nginx image in Docker.

Example taken from Katacoda: [Deploy NGINX container using Terraform](https://www.katacoda.com/courses/terraform/deploy-nginx)

## Steps

```bash
# edit main.tf (look in particular to the Windows workaround and the port number)
vi main.tf

# look for Terraform configuration and load providers
terraform init

# review existing running containers
docker ps

# review the plan
terraform plan

# stores the plan locally
terraform plan -out config.tfplan

# provision
terraform apply

# look at the new containers
docker ps

# open http://localhost:8080/ and make sure you see the page "Welcome to nginx!"
curl http://localhost:8080/

# look at a human-readable output of the state
terraform show

# remove
terraform destroy
```

## Details

* Terraform providers: [kreuzwerker/docker](https://registry.terraform.io/providers/kreuzwerker/docker) ([kreuzwerker/terraform-provider-docker](https://github.com/kreuzwerker/terraform-provider-docker))
