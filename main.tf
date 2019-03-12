provider "aws" {}

module "network" {
  source = "./network"
}

module "instances" {
  source              = "./instances"
  public_subnet_id_1a = "${module.network.public_subnet_id_1a}"
  vpc_id = "${module.network.vpc_id}"
}

module "load_balancer" {
  source         = "./load_balancer"
  public_subnet  = "${module.network.public_subnet}"
  security_group = "${module.autoscalinggroups.security_group}"
  vpc_id = "${module.network.vpc_id}"
}

module "autoscalinggroups" {
  source             = "./autoscalinggroups"
  public_subnet      = "${module.network.public_subnet}"
  private_subnet     = "${module.network.private_subnet}"
  private_ip_jenkins = "${module.instances.private_ip_jenkins}"
  load_balancer      = "${module.load_balancer.load_balancer}"
  vpc_id = "${module.network.vpc_id}"
}
