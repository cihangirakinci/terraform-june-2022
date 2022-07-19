sudo rm -rf .terraform* #remove all terraform file
ENV = "$1"              #
sed -i ' ' - e "s|env|$ENV|" backend.tf
terraform init
echo "Enviroment is set to $ENV"
terraform plan -var-file=$ENV.tfvars
terraform apply -var-file=$ENV.tfvars
