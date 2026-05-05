# resource "aws_security_group_rule" "backend_alb_bastion" {
#   type              = "ingress"
#   from_port         = 80
#   to_port           = 80
#   protocol          = "tcp"
#   security_group_id = local.backend_alb_sg_id
#   source_security_group_id = local.bastion_sg_id
# }


#bastion
resource "aws_security_group_rule" "bastion_laptop" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  security_group_id = local.bastion_sg_id
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "mongodb_bastion" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  security_group_id = local.mongodb_sg_id
  source_security_group_id = local.bastion_sg_id
}

resource "aws_security_group_rule" "redis_bastion" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  security_group_id = local.redis_sg_id
  source_security_group_id = local.bastion_sg_id
}

resource "aws_security_group_rule" "mysql_bastion" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  security_group_id = local.mysql_sg_id
  source_security_group_id = local.bastion_sg_id
}

resource "aws_security_group_rule" "rabbitmq_bastion" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  security_group_id = local.rabbitmq_sg_id
  source_security_group_id = local.bastion_sg_id
}

# resource "aws_security_group_rule" "catalogue_bastion" {
#   type              = "ingress"
#   from_port         = 22
#   to_port           = 22
#   protocol          = "tcp"
#   security_group_id = local.catalogue_sg_id
#   source_security_group_id = local.bastion_sg_id
# }

# resource "aws_security_group_rule" "user_bastion" {
#   type              = "ingress"
#   from_port         = 22
#   to_port           = 22
#   protocol          = "tcp"
#   security_group_id = local.user_sg_id
#   source_security_group_id = local.bastion_sg_id
# }

# resource "aws_security_group_rule" "cart_bastion" {
#   type              = "ingress"
#   from_port         = 22
#   to_port           = 22
#   protocol          = "tcp"
#   security_group_id = local.cart_sg_id
#   source_security_group_id = local.bastion_sg_id
# }

# resource "aws_security_group_rule" "shipping_bastion" {
#   type              = "ingress"
#   from_port         = 22
#   to_port           = 22
#   protocol          = "tcp"
#   security_group_id = local.shipping_sg_id
#   source_security_group_id = local.bastion_sg_id
# }

# resource "aws_security_group_rule" "payment_bastion" {
#   type              = "ingress"
#   from_port         = 22
#   to_port           = 22
#   protocol          = "tcp"
#   security_group_id = local.payment_sg_id
#   source_security_group_id = local.bastion_sg_id
# }

# resource "aws_security_group_rule" "frontend_bastion" {
#   type              = "ingress"
#   from_port         = 22
#   to_port           = 22
#   protocol          = "tcp"
#   security_group_id = local.frontend_sg_id
#   source_security_group_id = local.bastion_sg_id
# }


# #connections db to components
# resource "aws_security_group_rule" "mongodb_catalogue" {
#   type              = "ingress"
#   from_port         = 27017
#   to_port           = 27017
#   protocol          = "tcp"
#   security_group_id = local.mongodb_sg_id
#   source_security_group_id = local.catalogue_sg_id
# }



# resource "aws_security_group_rule" "redis_user" {
#   type              = "ingress"
#   from_port         = 6379
#   to_port           = 6379
#   protocol          = "tcp"
#   security_group_id = local.redis_sg_id
#   source_security_group_id = local.user_sg_id
# }

# resource "aws_security_group_rule" "mongodb_user" {
#   type              = "ingress"
#   from_port         = 27017
#   to_port           = 27017
#   protocol          = "tcp"
#   security_group_id = local.mongodb_sg_id
#   source_security_group_id = local.user_sg_id
# }

# resource "aws_security_group_rule" "redis_cart" {
#   type              = "ingress"
#   from_port         = 6379
#   to_port           = 6379
#   protocol          = "tcp"
#   security_group_id = local.redis_sg_id
#   source_security_group_id = local.cart_sg_id
# }

# resource "aws_security_group_rule" "mysql_shipping" {
#   type              = "ingress"
#   from_port         = 3306
#   to_port           = 3306
#   protocol          = "tcp"
#   security_group_id = local.mysql_sg_id
#   source_security_group_id = local.shipping_sg_id
# }

# resource "aws_security_group_rule" "rabbitmq_payment" {
#   type              = "ingress"
#   from_port         = 5672
#   to_port           = 5672
#   protocol          = "tcp"
#   security_group_id = local.rabbitmq_sg_id
#   source_security_group_id = local.payment_sg_id
# }


# # connections b/w component to component through backend_alb
# resource "aws_security_group_rule" "backend_alb_cart" {
#   type              = "ingress"
#   from_port         = 80
#   to_port           = 80
#   protocol          = "tcp"
#   security_group_id = local.backend_alb_sg_id
#   source_security_group_id = local.cart_sg_id
# }

# resource "aws_security_group_rule" "backend_alb_shipping" {
#   type              = "ingress"
#   from_port         = 80
#   to_port           = 80
#   protocol          = "tcp"
#   security_group_id = local.backend_alb_sg_id
#   source_security_group_id = local.shipping_sg_id
# }

# resource "aws_security_group_rule" "backend_alb_payment" {
#   type              = "ingress"
#   from_port         = 80
#   to_port           = 80
#   protocol          = "tcp"
#   security_group_id = local.backend_alb_sg_id
#   source_security_group_id = local.payment_sg_id
# }


# #backend-alb connecting to components
# resource "aws_security_group_rule" "catalogue_backend_alb" {
#   type              = "ingress"
#   from_port         = 8080
#   to_port           = 8080
#   protocol          = "tcp"
#   security_group_id = local.catalogue_sg_id
#   source_security_group_id = local.backend_alb_sg_id
# }

# resource "aws_security_group_rule" "user_backend_alb" {
#   type              = "ingress"
#   from_port         = 8080
#   to_port           = 8080
#   protocol          = "tcp"
#   security_group_id = local.user_sg_id
#   source_security_group_id = local.backend_alb_sg_id
# }

# resource "aws_security_group_rule" "cart_backend_alb" {
#   type              = "ingress"
#   from_port         = 8080
#   to_port           = 8080
#   protocol          = "tcp"
#   security_group_id = local.cart_sg_id
#   source_security_group_id = local.backend_alb_sg_id
# }

# resource "aws_security_group_rule" "shipping_backend_alb" {
#   type              = "ingress"
#   from_port         = 8080
#   to_port           = 8080
#   protocol          = "tcp"
#   security_group_id = local.shipping_sg_id
#   source_security_group_id = local.backend_alb_sg_id
# }

# resource "aws_security_group_rule" "payment_backend_alb" {
#   type              = "ingress"
#   from_port         = 8080
#   to_port           = 8080
#   protocol          = "tcp"
#   security_group_id = local.payment_sg_id
#   source_security_group_id = local.backend_alb_sg_id
# }


# #frontend
# resource "aws_security_group_rule" "frontend_alb_public" {
#   type              = "ingress"
#   from_port         = 443
#   to_port           = 443
#   protocol          = "tcp"
#   security_group_id = local.frontend_alb_sg_id
#   cidr_blocks       = ["0.0.0.0/0"]
# }

# resource "aws_security_group_rule" "frontend_frontend_alb" {
#   type              = "ingress"
#   from_port         = 80
#   to_port           = 80
#   protocol          = "tcp"
#   security_group_id = local.frontend_sg_id
#   source_security_group_id = local.frontend_alb_sg_id
# }

# #frontend_sg  to backend_alb
# resource "aws_security_group_rule" "backend_alb_frontend" {
#   type              = "ingress"
#   from_port         = 80
#   to_port           = 80
#   protocol          = "tcp"
#   security_group_id = local.backend_alb_sg_id
#   source_security_group_id = local.frontend_sg_id
# }

#frontend
resource "aws_security_group_rule" "ingress_alb_public" {
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  security_group_id = local.ingress_alb_sg_id
  cidr_blocks       = ["0.0.0.0/0"]
}

#open vpn
resource "aws_security_group_rule" "open_vpn_443" {
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  security_group_id = local.open_vpn_sg_id
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "open_vpn_laptop" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  security_group_id = local.open_vpn_sg_id
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "open_vpn_943" {
  type              = "ingress"
  from_port         = 943
  to_port           = 943
  protocol          = "tcp"
  security_group_id = local.open_vpn_sg_id
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "open_vpn_1194" {
  type              = "ingress"
  from_port         = 1194
  to_port           = 1194
  protocol          = "tcp"
  security_group_id = local.open_vpn_sg_id
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "components_open_vpn" {
  for_each = local.vpn_ingress_rules
  type              = "ingress"
  from_port         = each.value.port
  to_port           = each.value.port
  protocol          = "tcp"
  security_group_id = each.value.sg_id
  source_security_group_id = local.open_vpn_sg_id
}

/*
connections b/w component to component
resource "aws_security_group_rule" "catalogue_cart" {
  type              = "ingress"
  from_port         = 8080
  to_port           = 8080
  protocol          = "tcp"
  security_group_id = local.catalogue_sg_id
  source_security_group_id = local.cart_sg_id
}

resource "aws_security_group_rule" "cart_shipping" {
  type              = "ingress"
  from_port         = 8080
  to_port           = 8080
  protocol          = "tcp"
  security_group_id = local.cart_sg_id
  source_security_group_id = local.shipping_sg_id
}

resource "aws_security_group_rule" "cart_payment" {
  type              = "ingress"
  from_port         = 8080
  to_port           = 8080
  protocol          = "tcp"
  security_group_id = local.cart_sg_id
  source_security_group_id = local.payment_sg_id
}

resource "aws_security_group_rule" "user_payment" {
  type              = "ingress"
  from_port         = 8080
  to_port           = 8080
  protocol          = "tcp"
  security_group_id = local.user_sg_id
  source_security_group_id = local.payment_sg_id
} */

# resource "aws_security_group_rule" "payment_shipping" {
#   type              = "ingress"
#   security_group_id = local.payment_sg_id
#   source_security_group_id = local.shipping_sg_id
#   from_port         = 8080
#   protocol          = "tcp"
#   to_port           = 8080
# }

resource "aws_security_group_rule" "eks_control_plane_bastion" {
  type              = "ingress"
  security_group_id = local.eks_control_plane_sg_id
  source_security_group_id = local.bastion_sg_id
  from_port         = 443
  protocol          = "tcp"
  to_port           = 443
}

resource "aws_security_group_rule" "eks_node_bastion" {
  type              = "ingress"
  security_group_id = local.eks_node_sg_id
  source_security_group_id = local.bastion_sg_id
  from_port         = 22
  protocol          = "tcp"
  to_port           = 22
}

resource "aws_security_group_rule" "eks_node_eks_control_plane" {
  type              = "ingress"
  security_group_id = local.eks_node_sg_id
  source_security_group_id = local.eks_control_plane_sg_id
  from_port         = 0
  protocol          = "-1"
  to_port           = 0
}

resource "aws_security_group_rule" "eks_control_plane_eks_node" {
  type              = "ingress"
  security_group_id = local.eks_control_plane_sg_id
  source_security_group_id = local.eks_node_sg_id
  from_port         = 0
  protocol          = "-1"
  to_port           = 0
}

resource "aws_security_group_rule" "eks_node_vpc_cidr" {
  type              = "ingress"
  security_group_id = local.eks_node_sg_id
  cidr_blocks       = ["10.0.0.0/16"]
  from_port         = 0
  protocol          = "-1"
  to_port           = 0
}