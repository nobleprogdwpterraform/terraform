
resource "local_file" "pets" {
  filename = var.filename
  content = lookup(var.file-content, "statement2")
}