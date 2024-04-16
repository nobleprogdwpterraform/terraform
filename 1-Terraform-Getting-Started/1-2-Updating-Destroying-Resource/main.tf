resource "local_file" "hcl-basic" {
    filename = "terraform-hcl"
    content = "Terraform introduction"
    file_permission = "0700"
}