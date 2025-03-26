
data "local_file" "os-version" {
  filename = "os-version.txt"
}

output "os-version-value" {
  value = data.local_file.os-version.content
}