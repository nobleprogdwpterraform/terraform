resource "local_file" "hcl-basic" {
    filename = "pets.txt"
    content = "I Love pets!"
    file_permission = "0700"
}