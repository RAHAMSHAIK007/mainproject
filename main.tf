provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
 for_each = {
    host-1= "ansible"
    host-2= "Docker"
}
  ami           = "ami-0e6329e222e662a52"
  instance_type = "t2.medium"
  tags= {
    Name = "${each.key}" 
  }
}

