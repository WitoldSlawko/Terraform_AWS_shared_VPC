module "elastic_ip" {
  source = "./modules/elastic_ip"
  for_each = local.eip_entries

  eip_deps = [aws_internet_gateway.internet_gateway]
}

locals {
  eip_entries = {
     "public-us-east-1a" = "elastic_ip_01"
     "public-us-east-1b" = "elastic_ip_02"
  }
}