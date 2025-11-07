
resource "local_file" "pets" {
  filename = var.filename
  content = lookup(var.file-content,"statement1") # This will give a string with value I Love pets
}

# TODO: Fill in based on hints below:
# Hint: Complete the 'content' attribute using lookup() function
# Hint: Use => content = lookup(var.file-content, "statement1")