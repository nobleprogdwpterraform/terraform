resource "local_file" "pets" {
  filename = "my-pets.txt"
  content  = "new content with new value"

}


resource "random_string" "string" {
  length = var.length
}
