resource "local_file" "hcl-basic" {
    filename = "pets.txt"
    content = "I love pets"
    file_permission = "0700"
}