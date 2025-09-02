
data "local_file" "os-version" {
  filename = "os-version.txt"
}


output "filecontent" {
  value = data.local_file.os-version.content
}
