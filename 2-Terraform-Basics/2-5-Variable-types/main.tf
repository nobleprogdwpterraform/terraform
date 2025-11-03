
resource "local_file" "pets" {
  filename = var.filename
  content = 
}

# TODO: Fill in based on hints below:
# Hint: Complete the 'content' attribute using lookup() function
# Hint: Use => content = lookup(var.file-content, "statement1")