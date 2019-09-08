provider "aws" {
  access_key = "ACCESS_KEY_HERE"
  secret_key = "SECRET_KEY_HERE"
  region     = "us-east-1"
}

resource "aws_instance" "i1" {
  ami           = "ami-0b69ea66ff7391e80"
  instance_type = "t2.micro"
}

resource "aws_instance" "i2" {
  ami           = "ami-0c322300a1dd5dc79"
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

resource "aws_s3_bucket" "b2" {
  bucket = "tecmax0908201902"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}