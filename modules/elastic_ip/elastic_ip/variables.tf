# variable "eip_deps" {
#     type = list
# }

locals {
  eip_entries = {
     "public-us-east-1a" = "elastic_ip_01"
     "public-us-east-1b" = "elastic_ip_02"
  }
}