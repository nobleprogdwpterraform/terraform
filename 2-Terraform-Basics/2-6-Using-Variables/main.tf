
resource "local_file" "pets" {
  filename = var.filename
  content = 
}

/*
1. For empty blocks terraform will prompt for variable
2. Command line argument using -var "filename=pets.txt"
3. For lot of variable we can supply in .auto.tfvars file
4. export TF_VAR_filename=pets.txt

variable precedence:
1. Command flag -var
2. .auto.tfvars file 
3. env variables 

*/