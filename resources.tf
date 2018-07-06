resource "google_compute_network" "tfnetworkgcp" {
  name = "tfnetworkgcp"
  auto_create_subnetworks = true
}

resource "aws_vpc" "TFnetworkAWS" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags {
    Name = "TFnetworkAWS"
  }
}