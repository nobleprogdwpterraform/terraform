
resource "local_file" "file" {
  filename = "pets.txt"
  content = "This file is create at ${time_static.timestamp.day} ${time_static.timestamp.hour}"
}

resource "time_static" "timestamp" {
  
}

# TODO: Fill in based on hints below:
# Hint: Use expressions to construct filename dynamically using expression ${time_static.timestamp.id}