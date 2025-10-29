resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits = 4096
}

resource "local_file" "my-key" {
  filename = "my-key"
  content = tls_private_key.rsa.private_key_pem
}

