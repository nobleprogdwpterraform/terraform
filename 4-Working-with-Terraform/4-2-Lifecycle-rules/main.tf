resource "local_file" "pets" {
  filename = "pets.txt"
  content  = "new content with new value"
  lifecycle { 
    ignore_changes = [filename]
  }
}


resource "random_string" "string" {
  length = var.length
  lifecycle {
    create_before_destroy=true
    prevent_destroy=true
  }
}
