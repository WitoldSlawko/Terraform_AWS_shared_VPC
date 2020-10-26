module "elastic_ip" {
  source = "./modules/elastic_ip"
  for_each = local.eip_entries

  eip_deps = [aws_internet_gateway.internet_gateway]
}

locals {
  eip_entries = {
    "eip1" = "elastic_ip_01"
    "eip2" = "elastic_ip_02"
  }
}