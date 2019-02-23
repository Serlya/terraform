resource "aws_vpc" "vpc" {
  cidr_block = "${var.vpc}"
  tags = {
    Name = "mynew-VPC"
  }
}
resource "aws_subnet" "public_subnet" {
  vpc_id		= "${aws_vpc.vpc.id}"
  cidr_block		= "${var.public}"
  map_public_ip_on_launch = true
  availability_zone = "${var.publicaz}"
  tags = {
	Name = "mypublic subnet"
	}
}
resource "aws_subnet" "private_subnet" {
  vpc_id                = "${aws_vpc.vpc.id}"
  cidr_block            = "${var.private}"
  availability_zone = "${var.privateaz}"
  tags = {
        Name = "myprivate subnet"
        }
}

