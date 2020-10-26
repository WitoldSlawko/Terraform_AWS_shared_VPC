module "subnet" {
    source = "./modules/subnet"
    for_each = local.subnet_entries

    subnet_vpc = aws_vpc.vpc.id
    subnet_name = each.key
    availability_zone = lookup(each.value, "availability_zone")
    cidr = lookup(each.value, "cidr")
    is_public = lookup(each.value, "is_public")
}

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
            "public": false
        },
        "private_subnet_02" = {
            "availability_zone" : "us-east-1b"
            "cidr": "10.83.128.0/20"
            "public": false
        }
    }
}
