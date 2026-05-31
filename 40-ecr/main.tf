resource "aws_ecr_repository" "catalogue" {
  name                 = "roboshop/catalogue"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
  force_delete = true
}

resource "aws_ecr_repository" "user" {
  name                 = "roboshop/user"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
  force_delete = true
}

resource "aws_ecr_repository" "cart" {
  name                 = "roboshop/cart"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
  force_delete = true
}

resource "aws_ecr_repository" "shipping" {
  name                 = "roboshop/shipping"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
  force_delete = true
}

resource "aws_ecr_repository" "payment" {
  name                 = "roboshop/payment"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
  force_delete = true
}

resource "aws_ecr_repository" "frontend" {
  name                 = "roboshop/frontend"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
  force_delete = true
}