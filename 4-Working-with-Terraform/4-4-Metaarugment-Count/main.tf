resource "local_file" "pets" {
  filename = var.filename[count.index]
  content = "We love pets"
  count = length(var.filename)
}