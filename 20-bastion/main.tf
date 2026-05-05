resource "aws_instance" "bastion" {
    ami                     = local.ami_id
    instance_type           = "t3.micro"
    vpc_security_group_ids  = [local.bastion_sg_id]
    subnet_id = local.subnet_id
    # iam_instance_profile = aws_iam_instance_profile.bastion.name

    root_block_device {
      volume_size = 50
      volume_type = "gp3"
    }
    
    user_data = file("bastion.sh")


    tags = merge(
    local.common_tags,
    {
      Name = "${local.common_name}-bastion"
    }
  )
}

# #Create IAM Role for bastion
# resource "aws_iam_role" "bastion" {
#   name = "bastion"

#   assume_role_policy = jsonencode({
#     Version = "2012-10-17",
#     Statement = [
#       {
#         Effect = "Allow",
#         Principal = {
#           Service = "ec2.amazonaws.com"
#         },
#         Action = "sts:AssumeRole"
#       }
#     ]
#   })
# }

# #Attach AdministratorAccess policy
# resource "aws_iam_role_policy_attachment" "bastion" {
#   role       = aws_iam_role.bastion.name
#   policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
# }

# # 3. Create Instance Profile
# resource "aws_iam_instance_profile" "bastion" {
#   name = "bastion"
#   role = aws_iam_role.bastion.name
# }