
resource "local_file" "pets" {
  filename = var.filename
  content = var.file-content
}
