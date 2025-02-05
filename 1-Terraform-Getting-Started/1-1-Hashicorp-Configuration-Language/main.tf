resource "local_file" "my-pets" {
    filename = "pets.txt"
    content = "We love pets."
}