provider "aws" {}

module "network" {
  source = "./network"
}

module "instances" {
  source               = "./instances"
  public_jenkins_id_1a = "${module.network.public_jenkins_id_1a}"
  vpc_id               = "${module.network.vpc_id}"
}

module "load_balancer" {
  source               = "./load_balancer"
  public_subnet_lb     = "${module.network.public_subnet_lb}"
  public_subnet_lb_i   = "${module.network.public_subnet_lb_i}"
  security_group_front = "${module.autoscalinggroups.security_group_front}"
  security_group_back  = "${module.autoscalinggroups.security_group_back}"
  vpc_id               = "${module.network.vpc_id}"
}

module "autoscalinggroups" {
  source             = "./autoscalinggroups"
  public_subnet      = "${module.network.public_subnet}"
  private_subnet     = "${module.network.private_subnet}"
  private_ip_jenkins = "${module.instances.private_ip_jenkins}"
  load_balancer      = "${module.load_balancer.load_balancer}"
  load_balancer_i    = "${module.load_balancer.load_balancer_i}"
  vpc_id             = "${module.network.vpc_id}"
}

module "RDB" {
  source  = "./RDB"
  subnets = "${module.network.subnets}"
  vpc_id  = "${module.network.vpc_id}"
}
