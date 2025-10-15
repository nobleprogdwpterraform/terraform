variable "ami" {
  type = map(string)
  default = {
    "ProjectA" = "ami-0360c520857e3138f",
    "ProjectB" = "ami-0cfde0ea8edd312d4"
  }
}

variable "app_region" {
  type = string
  default = "us-east-1"
}