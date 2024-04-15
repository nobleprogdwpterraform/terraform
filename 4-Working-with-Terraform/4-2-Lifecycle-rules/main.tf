resource "local_file" "pets" {
  filename = "pets.txt"
  content = random_string.string.id
}