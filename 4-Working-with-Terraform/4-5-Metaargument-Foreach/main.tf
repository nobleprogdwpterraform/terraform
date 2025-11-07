resource "local_file" "pets" {
  filename = each.value
  content = "We love pets"

  for_each = var.filename
}

# TODO: Fill in based on hints below:
# Hint: Line 2 => filename = each.value
# Hint: Line 5 => for_each = var.filename