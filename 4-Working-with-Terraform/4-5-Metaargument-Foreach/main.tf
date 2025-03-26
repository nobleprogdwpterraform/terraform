resource "local_file" "pets" {
  filename = each.value
  content = "We love pets"
  for_each = var.filename
}