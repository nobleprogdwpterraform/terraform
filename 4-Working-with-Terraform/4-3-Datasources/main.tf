

data "local_file" "os-version" {
    filename = "os-version.txt" 
}

output "file-content" {
    value = data.local_file.os-version.content
}
