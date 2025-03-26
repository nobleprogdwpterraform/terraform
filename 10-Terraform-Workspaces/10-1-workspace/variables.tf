variable "ami" {
  type = map(string)
  default = {
    "ProjectA" = "ami-084568db4383264d4",
    "ProjectB" = "ami-08b5b3a93ed654d19"
  }
}

variable "app_region" {
  type = string
  default = "us-east-1"
}