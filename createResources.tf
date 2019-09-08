provider "aws" {
  access_key = "XX"
  secret_key = "XX"
  region     = "us-east-1"
}

resource "aws_instance" "i1" {
  ami           = "ami-0b69ea66ff7391e80"
  instance_type = "t2.micro"
}

resource "aws_eip" "eip1" {
  instance = "${aws_instance.i1.id}"
}


resource "aws_s3_bucket" "b1" {
  bucket = "tecmax0908201901"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
