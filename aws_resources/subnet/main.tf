module "subnet" {
    source = "../../modules/subnet"
    count = length(lookup(var.subnet_entries, "subnet_names"))

    subnet_name = element((lookup(var.subnet_entries, "subnet_names")), count.index)
    availability_zone = element((lookup(var.subnet_entries, "availability_zones")), count.index)
    cidr = element((lookup(var.subnet_entries, "cidr")), count.index)
}

# module "public_subnet_01" {
#     source = "../../modules/subnet"

#     subnet_name = "public_subnet_01"
#     availability_zone = "us-east-1a"
#     cidr = "10.83.16.0/20"
# }

# module "public_subnet_02" {
#     source = "../../modules/subnet"

#     subnet_name = "public_subnet_02"
#     availability_zone = "us-east-1b"
#     cidr = "10.83.32.0/20"
# }

# module "private_subnet_01" {
#     source = "../../modules/subnet"

#     subnet_name = "private_subnet_01"
#     availability_zone = "us-east-1a"
#     cidr = "10.83.64.0/20"
# }

# module "private_subnet_02" {
#     source = "../../modules/subnet"
    
#     subnet_name = "private_subnet_02"
#     availability_zone = "us-east-1b"
#     cidr = "10.83.128.0/20"
# }