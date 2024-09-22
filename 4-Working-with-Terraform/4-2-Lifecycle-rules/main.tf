resource "local_file" "pets" {
  filename = "pets.txt"
  content = random_string.string.id

}


resource "random_string" "string" {
  length  = var.length
}
