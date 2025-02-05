resource "local_file" "pets" {
  filename       = "pets.txt"
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

5. terraform validate (validates the configurations)
6. terrafom fmt (formats the configuration file)
7. terraform show
8. terraform providers
9. terraform output
10. terraform output filename
*/