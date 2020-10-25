module "elastic_ip" {
  source = "../../modules/elastic_ip"
  count = 2

  elastic_ip_name = "elastic_ip_${count.index + 1}"
}

# module "elastic_ip_02" {
#   source = "../../modules/elastic_ip"
  
#   name = "elastic_ip_02"
# }