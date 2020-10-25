locals  {
    subnet_entries = {
        "public_subnet_01" = {
            "availability_zone" : "us-east-1a"
            "cidr": "10.83.16.0/20"
            "public": true
        },
        "public_subnet_02" = {
            "availability_zone" : "us-east-1b"
            "cidr": "10.83.32.0/20"
            "public": true
        },
        "private_subnet_01" = {
            "availability_zone" : "us-east-1a"
            "cidr": "10.83.64.0/20"
            "public": true
        },
        "private_subnet_02" = {
            "availability_zone" : "us-east-1b"
            "cidr": "10.83.128.0/20"
            "is_public": true
        },
    }
}

# variable "subnet_entries" {
#     type = map
#     default = {
#         "subnet_names" = ["public_subnet_01", "public_subnet_02", "private_subnet_01", "private_subnet_02"]
#         "availability_zones" = ["us-east-1a", "us-east-1b", "us-east-1a", "us-east-1b"]
#         "cidrs" = ["10.83.16.0/20", "10.83.32.0/20", "10.83.64.0/20", "10.83.128.0/20"]
#         "publics" = [true, true, false, false]
#     }
# }
