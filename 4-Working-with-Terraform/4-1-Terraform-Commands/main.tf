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

5. terraform validate  (validates the configuration)
6. terraform fmt (format the configuration file)
8. terraform show (displaye all resources with thier attributes so that we dont need to check state file)
9. terraform providers (to get list of providers used)
10. terraform output
11. terraform output variable-name (to show output variable name and value)
*/

