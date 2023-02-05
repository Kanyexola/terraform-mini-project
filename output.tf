output "public_subnet1" {
  value = aws_subnet.public1.id
}

output "public_subnet2" {
  value = aws_subnet.public2.id
}

output "public_subnet3" {
  value = aws_subnet.public3.id
}

output "public_ip" {
  value = aws_instance.web-server.public_ip
}

output "public2_ip" {
  value = aws_instance.web-server2.public_ip
}

output "public3_ip" {
  value = aws_instance.web-server3.public_ip
}

output "Application_LB_DNS" {
  value = aws_lb.Application_LB.dns_name
}

output "Target_group_DNS" {
  value = aws_lb_target_group.target_G.arn
}



