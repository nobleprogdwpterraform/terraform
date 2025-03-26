
resource "local_file" "pets" {
  filename = "pets.txt"
  content = "I Love pets!"
}

resource "local_sensitive_file" "foo" {
  content  = "foo!"
  filename = "foo.txt"
}

/*
local_file = local is the provider and file is the resource type
1. Write the  configuration file_permission
2. Run terraform init (to initialize the configuration directory)
3. Run terraform plan 
4. Run terraform apply
*/