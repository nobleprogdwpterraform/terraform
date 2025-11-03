resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits = 4096
}

resource "local_file" "my-key" {
  filename = "my-key"
  content = tls_private_key.rsa.private_key_pem
}



# TODO: Fill in based on hints below:
# Hint: Use output block to show values after apply
# Hint: Syntax => output "filename" { value = local_file.pets.filename }
