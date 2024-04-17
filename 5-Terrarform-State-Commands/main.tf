
resource "random_string" "string-1" {
    length = 5
}


/*
1. terraform state list
2. terraform state list random_string.string
3. terraform state show
4. terraform state mv random_string.string random_string.string-1
5. terraform state pull
6. terraform state rm random_string.string
*/