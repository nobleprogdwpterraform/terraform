
resource "local_file" "pets" {
  filename = "pets.txt"
  content = "we love pets"
}