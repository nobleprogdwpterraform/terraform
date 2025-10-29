variable "filename" {
    #type = string
    #default = "a.txt"
    
    type = set(string)
    default = ["a.txt", "b.txt"]

}