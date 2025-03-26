variable "filename" {
    #type = string
    #default = "a.txt"
    
    type = set(string)
    default = ["c.txt", "d.txt"]

}