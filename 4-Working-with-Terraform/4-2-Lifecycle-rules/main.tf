resource "local_file" "pets" {
  filename = "pets.txt"
  content  = "I love pets!"
  /*
  lifecycle { 
    ignore_changes = [content]
  }
  */
}


resource "random_string" "string" {
  length = var.length
  /*
  lifecycle {
    create_before_destroy=true
  }
  */
}
