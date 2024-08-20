
resource "random_string" "new-string" {
    length = 5
}

/*
1. terraform state list
2. terraform state show random_string.string
3. terraform state mv random_string.string random_string.new-string
4. terraform state pull
5. terraform state rm random_string.string
*/
