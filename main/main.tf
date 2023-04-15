module "create_vpc" {
    source = "../modules/network"
}

module "create_cluster" {
    source = "../modules/cluster"
    depends_on = [module.create_vpc]

}

module "create_worker" {
    source = "../modules/worker"
    depends_on = [module.create_cluster]

}