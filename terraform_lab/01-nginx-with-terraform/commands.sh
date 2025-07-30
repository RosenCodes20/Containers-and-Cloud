terraform init
terraform fmt
terraform validate
terraform plan
terraform apply # if it ask you if you want to do it type yes!!!
terraform show # to see your running container!

# we changed the port from 8000 to 5001 and applied the changes again with:

terraform apply

# so after that our changes will be applied and it will update

terraform destroy 

# to fully destroy our container (if you want to do it only!!)