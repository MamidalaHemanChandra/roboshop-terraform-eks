# module "catalogue" {
#   source = "terraform-aws-modules/security-group/aws"

#   name        = "${local.common_name}-catalogue"
#   description = "Security group for catalogue service with custom ports open within VPC"
#   vpc_id      = local.vpc_id
#   use_name_prefix = false
# }

module "sg" {
    count = length(var.sg_name)
    source = "git::https://github.com/MamidalaHemanChandra/terraform-aws-sg.git"
    project = var.project
    environment = var.environment
    sg_name = var.sg_name[count.index]
    sg_description = "Created for ${var.sg_name[count.index]}"
    vpc_id = local.vpc_id
}