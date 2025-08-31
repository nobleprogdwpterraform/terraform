
resource "local_file" "file" {
  filename = "pets.txt"
  content = This file is create at
}

resource "time_static" "timestamp" {
  
}