
resource "local_file" "file" {
  filename = "pets.txt"
  content = time_static.timestamp.id
}

resource "time_static" "timestamp" {
  
}