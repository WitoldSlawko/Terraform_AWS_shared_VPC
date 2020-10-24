module "elastic_ip_01" {
  source = "../modules/eip"
  name = "elastic_ip_01"
}

module "elastic_ip_02" {
  source = "../modules/eip"
  name = "elastic_ip_02"
}