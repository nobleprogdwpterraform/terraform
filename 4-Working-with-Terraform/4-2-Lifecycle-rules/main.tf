resource "local_file" "pets" {
  filename = "my-pets.txt"
  content  = "new content"
  lifecycle {
    create_before_destroy = true
  }

}


resource "random_string" "string" {
  length = var.length
  lifecycle {
    create_before_destroy = true
    prevent_destroy       = true
  }
}
