module "naming" {
  source = "./modules/naming"
}

module "iam" {
  source = "./modules/iam"

  name_prefix = module.naming.name_prefix
}

module "compute" {
  source = "./modules/compute"

  name_prefix           = module.naming.name_prefix
  instance_profile_name = module.iam.instance_profile_name
}

output "instance_id" {
  value = module.compute.instance_id
}

output "instance_profile_name" {
  value = module.iam.instance_profile_name
}
