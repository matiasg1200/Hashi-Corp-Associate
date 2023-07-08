#Vimos en la intro que los principales snippets son "provider" y "resoruce"

#En provider vamos a seleccionar el vendor sobre el cual vamos a deployar la infra. 
#Por defecto, cuando hagamos terraform init, terraform va a buscar los providers al Terraform registry pero también podríamos tener custom providers
#https://registry.terraform.io/browse/providers
provider "aws" {
  region = "us-east-1"
}

#Resoruces es el tipo de recurso que vamos a crear. 
#El resoce type va a depender del cloud vendor que hayamos elegido como provider y los argumentos de configuración van a depender a su vez del tipo de resource que estemos creando.
#https://registry.terraform.io/providers/hashicorp/aws/latest/docs
resource "ec2_instance" "name" {
    ami = "ami-0f1a6835595fb9246"
    subnet_id = "subnet-0c60761530bfbe4d0"  
    instance_type = "t3.micro"
    tags = {
        name = "my-tf-node"
    }
}