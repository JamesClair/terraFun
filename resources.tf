resource "google_compute_network" "tfnetworkgcp" {
  name = "tfnetworkgcp"
  auto_create_subnetworks = false
}

resource "aws_vpc" "TFnetworkAWS" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags {
    Name = "TFnetworkAWS"
  }
}

resource "aws_subnet" "AWSsubnet1" {
  cidr_block = "${cidrsubnet(aws_vpc.TFnetworkAWS.cidr_block, 3, 1)}"
  vpc_id = "${aws_vpc.TFnetworkAWS.id}"
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "AWSsubnet2" {
  cidr_block = "${cidrsubnet(aws_vpc.TFnetworkAWS.cidr_block, 2, 2)}"
  vpc_id = "${aws_vpc.TFnetworkAWS.id}"
  availability_zone = "us-east-1b"
}