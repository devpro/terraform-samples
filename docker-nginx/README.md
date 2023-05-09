# Nginx in Docker with Terraform

Run latest nginx image in a container (inspired by [Get Started - Docker](https://developer.hashicorp.com/terraform/tutorials/docker-get-started)).

## Steps

```bash
# configures Terraform and loads providers
terraform init

# displays current containers
docker ps

# displays the plan
terraform plan

# stores the plan locally
terraform plan -out config.tfplan

# provisions the resource
terraform apply

# makes sure the nginx container is running
docker ps

# makes sure you see the page "Welcome to nginx!"
curl http://localhost:8080/

# displays a human-readable output of the state
terraform show

# lists resources
terraform state list

# applies a change by specifying a variable
terraform apply -var "container_count=2"

# removes the resource
terraform destroy
```
