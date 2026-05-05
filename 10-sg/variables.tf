variable "project" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}

variable "sg_name" {
    default = [
        "mongodb", "redis", "mysql", "rabbitmq",
        # "catalogue", "user", "cart", "shipping", "payment",
        # "frontend",
        # "frontend_alb",
        # "backend_alb",
        "ingress_alb",
        "bastion",
        "eks_control_plane",
        "eks_node",
        "open_vpn"
    ]
}