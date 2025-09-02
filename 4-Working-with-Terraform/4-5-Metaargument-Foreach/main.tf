resource "local_file" "pets" {
  filename = each.value # first iteration=c.txt, second iteration = d.txt
  content = "We love pets"
  for_each = var.filename
}