
data "local_file" "os-version" {
  filename = "os-version.txt"
}

output "content" {
  value = data.local_file.os-version.content
}
