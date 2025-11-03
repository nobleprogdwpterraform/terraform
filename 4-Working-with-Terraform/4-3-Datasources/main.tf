
data "local_file" "os-version" {
  filename = "os-version.txt"
}

output "content" {
  
}


# TODO: Fill in based on hints below:
# Create a file named os-version.txt in current working directory with some dummy content eg 3.12
# Hint: Line 7 => value = data.local_file.os-version.content