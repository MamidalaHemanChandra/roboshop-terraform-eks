data "aws_ssm_parameter" "ingress_alb_sg_id" {
  name = "/${var.project}/${var.environment}/ingress_alb_sg_id"
}

data "aws_ssm_parameter" "public_subnet_ids" {
  name = "/${var.project}/${var.environment}/public_subnet_ids"
}

data "aws_ssm_parameter" "ingress_certificate_arn" {
  name = "/${var.project}/${var.environment}/ingress_certificate_arn"
}