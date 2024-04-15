variable "filename" {
  type = string
  description = "name of the file"
  
}

variable "length" {
  type = number
  description = "Length of the password"
  
}

# additional types
variable "prefix-list" {
  type = list(string)
  description = "prefix list"
  
}

variable "prefix-set" {
  type = set(string)
  description = "prefix list"
  
}

variable "file-content" {
  type = map(string)
  description = "prefix list"
  
}

variable "complex-object" {
    type = object({
      name = string
      age = number
      subjects=list(string)
    })

}

variable "fav-pet" {
    type = tuple([ string,number,bool ])
    
}