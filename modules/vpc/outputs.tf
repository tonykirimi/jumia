#VPC ID

output "vpc_id" {
  value = aws_vpc.jumia.id
}

#VPC CIDR

output "vpc_cidr" {
  value = var.vpc_cidr_block
}

#Public Subnets

output "public_Subnets" {
  
  
  value = tolist([for subnet in aws_subnet.public_subnets : subnet.id]) 
  
}

output "private_subnets" {
  
  value = tolist([for subnet in aws_subnet.private_subnets : subnet.id])
}
