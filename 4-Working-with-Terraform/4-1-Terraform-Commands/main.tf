resource "local_file" "pets" {
  filename        = "pets.txt"
  content         = "we love pets!"
  file_permission = "0700"
}

output "filename" {
  value = local_file.pets.filename
}

/*

1. terraform -version
2. terraform init
3. terraform plan
4. terraform apply
5. terraform init -upgrade

5. terraform validate 
6. terraform fmt 
8. terraform show 
9. terraform providers 
10. terraform output
11. terraform output <variable_name>

*/
