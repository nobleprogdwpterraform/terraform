resource "local_sensitive_file" "pets" {
  filename = "pets.txt"
  content = "I Love Pets"
}

# There 3 types of providers:
/*
1. Official: maintained by hashicorp itself
2. Partner: Partner tech companies
3. Community provider: Maintained by individuals, not officially supported by hashicorp
*/