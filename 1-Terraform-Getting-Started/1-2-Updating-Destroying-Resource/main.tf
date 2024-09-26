resource "local_file" "hcl-basic" {
    filename = "pets.txt"
    content = "I Love dogs"
    file_permission = "0700"
}