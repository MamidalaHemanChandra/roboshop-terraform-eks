module "vpc" {
    # source = "../terraform-aws-vpc"
    source = "git::https://github.com/MamidalaHemanChandra/terraform-aws-vpc.git?ref=main"
    vpc_cidr_block = var.vpc_cidr_block
    project = var.project
    environment = var.environment
    vpc_tags = var.vpc_tags
    public_subnet_cidr_block = var.public_subnet_cidr_block
    private_subnet_cidr_block = var.private_subnet_cidr_block
    database_subnet_cidr_block = var.database_subnet_cidr_block
    peering_required = false
}