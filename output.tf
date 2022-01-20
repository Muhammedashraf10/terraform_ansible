output "instance_ip_addr" {
  value = aws_instance.app_server.private_ip
}

output "instance_public_ip" {
  value = aws_instance.app_server.public_ip
}
