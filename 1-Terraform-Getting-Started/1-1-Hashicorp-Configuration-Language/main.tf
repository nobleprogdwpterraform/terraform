resource "local_file" "my-pets" {
    filename = "pets.txt"
    content = "I Love pets!"
}