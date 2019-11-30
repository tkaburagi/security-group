output "http_port" {
  value = var.consul_http_port
}

output "https_port" {
  value = var.consul_https_port
}

output "grpc_port" {
  value = var.consul_grpc_port
}

output "cluster_rpc_port" {
  value = var.consul_cluster_rpc_port
}

output "wan_serf" {
  value = var.consul_wan_serf
}

output "sg_id" {
  value = aws_security_group.security_group.id
}