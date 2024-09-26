variable "app_region" {
  type = map(string)
  default = {
    "ProjectA" = "eu-west-1",
    "ProjectB" = "us-west-1"
  }
}

variable "ami" {
  type = map(string)
  default = {
    "ProjectA" = "ami-0c38b837cd80f13bb",
    "ProjectB" = "ami-0ff591da048329e00"
  }
}
