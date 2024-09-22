
resource "local_file" "file" {
  filename = "pets.txt"
  content = "This file is create at ${time_static.timestamp.id}"
}