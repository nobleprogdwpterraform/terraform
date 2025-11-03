resource "local_file" "pets" {
  filename =  var.filename
  content = "We love pets"
  count = 2
}

# TODO: Fill in based on hints below:
# Hint: Line 2 => filename =  var.filename[count.index] # first iteration=0, second iteration=1
# Hint: Line 4 => count = length(var.filename)
