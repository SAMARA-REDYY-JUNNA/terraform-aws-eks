module "vpc" {
    #source = "../terraform-aws-vpc"
    source = "git::https://github.com/SAMARA-REDYY-JUNNA/terraform-aws-vpc.git?ref=main"
    project_name = var.project_name
    common_tags = var.common_tags
    public_subnet_cidr = var.public_subnet_cidr
    private_subnet_cidr = var.private_subnet_cidr
    database_subnet_cidr = var.database_subnet_cidr
    is_peering_required = var.is_peering_required
}