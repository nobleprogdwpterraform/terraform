variable "filename" {
    #type = string
    #default = "a.txt"
    
    type = set(string)
    default = ["d.txt", "e.txt"]

}