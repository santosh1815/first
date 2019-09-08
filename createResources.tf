provider "aws" {
  access_key = AKIA4HB3VCA4GGU3K62K"
  secret_key = "rXKFfs7b+033Svp57ytO4tdoE1rrESa1E9ktX0yU"
  region     = "us-east-1"
}
resource "aws_instance" "example1" {
  ami           = "ami-0b69ea66ff7391e80"
  instance_type = "t2.micro"
}

resource "aws_instance" "example2" {
  ami           = "ami-0b69ea66ff7391e80"
  instance_type = "t2.micro"
}
