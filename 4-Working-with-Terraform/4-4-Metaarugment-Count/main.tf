resource "local_file" "pets" {
  filename =  var.filename[count.index] # must be a string
  content = "We love pets"
  count = length(var.filename) # 3
}