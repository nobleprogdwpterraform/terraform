resource "local_file" "pets" {
  filename = "pets.txt"
  content = "We love pets!"
}