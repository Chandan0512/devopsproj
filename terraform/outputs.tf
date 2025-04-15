output "public_ip" {
  value =  [for instance in aws_instance.web : instance.public_ip]
}

output "instance_private_ip" {
  value       = [for instance in aws_instance.web : instance.private_ip]
}
