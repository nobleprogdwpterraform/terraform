resource "local_file" "pets" {
  filename        = "pets.txt"
  content         = "we love pets!"
  file_permission = "0700"
}

output "filename" {
  value = local_file.pets.filename
}


/*
Terraform commands:
terraform init
terraform init -upgrade
terraform plan
terraform apply

terraform plan -out=infra.plan
terraform show infra.plan
terraform apply infra.plan

terrafrom validate  (validates the configuration) 
terraform fmt (formats the configuration)
terraform show (shows the resources along with thier attributes and output variables)
terraform providers (show all the providers)
terraform output (to display output variables and values)

*/