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
terraform plan
terraform apply

terrafrom validate  (validates the configuration) 
terraform fmt (formats the configuration)
terraform show (shows the resources along with thier attributes and output variables)
terraform providers (show all the providers)
terraform output (to display output variables and values)

*/