
resource "local_sensitive_file" "pets" {
  filename = "pets.txt"
  content = "I Love Pets"
}

# Terraform registry documentation https://registry.terraform.io/