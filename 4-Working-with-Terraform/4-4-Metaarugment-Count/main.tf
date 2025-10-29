resource "local_file" "pets" {
  filename =  var.filename
  content = "We love pets"
  count = 2
}