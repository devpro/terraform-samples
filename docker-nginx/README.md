# Nginx in Docker

Run latest nginx image in Docker.

## Steps

```bash
# review and edit main.tf (look in particular to the Windows workaround and the port number)

# look for Terraform configuration and load providers
terraform init

# review existing running containers
docker ps

# provision
terraform apply

# look at the new containers
docker ps

# open http://localhost:8080/ and make sure you see the page "Welcome to nginx!"

# remove
terraform destroy
```
