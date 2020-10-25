resource "aws_internet_gateway" "internet_gateway" {
    vpc_id = module.aws_vpc.vpc_id # to-change
    # tags       = {
    #     Name = "igw-${var.deployment_name}"
    # }
}