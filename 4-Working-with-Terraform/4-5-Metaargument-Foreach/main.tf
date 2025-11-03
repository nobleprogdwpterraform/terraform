resource "local_file" "pets" {
  filename = 
  content = "We love pets"

  for_each = 
}

# TODO: Fill in based on hints below:
# Hint: Line 2 => filename = each.value
# Hint: Line 5 => for_each = var.filename
