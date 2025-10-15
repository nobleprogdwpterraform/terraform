resource "local_file" "pets" {
  filename =  var.filename[count.index] # first iteration=0, second iteration=1
  content = "We love pets"
  count = length(var.filename)
}