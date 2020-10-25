module "subnet" {
    source = "../../modules/subnet"
    # count = length(local.subnet_entries)
    for_each = local.subnet_entries

    subnet_name = each.key
    availability_zone = lookup(each.value, "availability_zone")
    cidr = lookup(each.value, "cidr")
    is_public = lookup(each.value, "is_public")
    # subnet_name = element((lookup(var.subnet_entries, "subnet_names")), count.index)
    # availability_zone = element((lookup(var.subnet_entries, "availability_zones")), count.index)
    # cidr = element((lookup(var.subnet_entries, "cidrs")), count.index)
    # is_public = element((lookup(var.subnet_entries, "publics")), count.index)
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