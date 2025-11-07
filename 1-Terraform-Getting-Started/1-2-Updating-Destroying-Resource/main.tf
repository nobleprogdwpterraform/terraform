resource "local_file" "hcl-basic" {
    filename = "pets.txt"
    content = "I love pets"
    file_permission = "0700"
}

# TODO: Fill in based on hints below:
# Hint: Line 2 => filename = "pets.txt"
# Hint: Line 3 => content = "I love pets"
# Hint: Line 4 => file_permission = "0700"