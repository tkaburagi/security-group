resource "aws_security_group" "consul_security_group" {
  name        = "consul_security_group"
  description = "Consul Sercuriy Group"
  vpc_id      = var.vpc_id

  ingress {
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
    from_port   = var.http_port
    to_port     = var.http_port
  }

  ingress {
    cidr_blocks = var.cidr_blocks
    protocol    = "tcp"
    from_port   = var.https_port
    to_port     = var.https_port
  }

  ingress {
    cidr_blocks = var.cidr_blocks
    protocol    = "tcp"
    from_port   = var.grpc_port
    to_port     = var.grpc_port
  }

  ingress {
    cidr_blocks = var.cidr_blocks
    protocol    = "tcp"
    from_port   = var.cluster_rpc_port
    to_port     = var.cluster_rpc_port
  }

  ingress {
    cidr_blocks = var.cidr_blocks
    protocol    = "tcp"
    from_port   = var.lan_serf
    to_port     = var.lan_serf
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
  }

}
