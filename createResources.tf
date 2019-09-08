provider "aws" {
  access_key = AKIA4HB3VCA4GGU3K62K"
  secret_key = "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"
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