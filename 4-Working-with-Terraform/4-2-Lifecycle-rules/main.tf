resource "local_file" "pets" {
  filename = "pets.txt"
  content = random_string.string.id
  lifecycle {
    create_before_destroy=true
  }
}


resource "random_string" "string" {
  length  = var.length
  lifecycle {
    create_before_destroy=true
  }
}
