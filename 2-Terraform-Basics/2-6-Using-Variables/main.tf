
resource "local_file" "pets" {
  filename = var.filename
  content = lookup(var.file-content,"statement1")
}


# TODO: Fill in based on hints below:
# Hint: Complete the 'content' attribute using lookup() function
# Hint: Use => content = lookup(var.file-content, "statement1")
# Variable precedence :
#  -1. -var command line argument
#  -2. .auto.tfvars file
#  -3. Environment variables (TF_VAR_)