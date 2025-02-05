resource "local_file" "hcl-basic" {
    filename = "Helloword.txt"
    content = "Hello world"
    file_permission = "0700"
}