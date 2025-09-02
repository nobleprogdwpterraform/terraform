resource "local_file" "pets" {
  filename       = "pets.txt"
  content         = "we love pets!"
  file_permission = "0700"
}

output "filename" {
  value = local_file.pets.filename
}

/*
1. terraform init
2. terraform plan
3. terraform apply

4. terraform validate (validates the configuration file)
5. terraform fmt (formatting config file)
6. terraform show
7. terraform providers
8. terraform output
9. terraform output filename
*/