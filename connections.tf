provider "google" {
  credentials = "${file("../terrafun-209318-bd0b999a0b71.json")}"
  project = "terrafun-209318"
  region = "us-east1"
}

provider "aws" {
  region = "us-east-1"
}

provider "azurerm" {
  subscription_id = "0"
  client_id = "1"
  client_secret = "2"
  tenant_id = "3"
}