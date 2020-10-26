module "priv_rt_association" {
    source = "./modules/priv_rt_association"
    # count  = 2
    # priv_rt_association_count  = count.index + 1
    subnet_id = var.priv_rt_association_subnet_id
    route_table_id = var.priv_rt_association_rt_id
}


