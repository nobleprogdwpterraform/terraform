
resource "local_file" "pets" {
  filename = var.filename
  content = var.file-content
}


# TODO: Fill in based on hints below:
# Hint: Use variable 'filename' in place of hardcoded value
# Hint: Use variable 'file-content' in the content attribute
# Hint: Use syntax => filename = var.filename and content = var.file-content