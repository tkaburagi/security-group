resource "aws_security_group" "security_group" {
  name        = "hashistack_security_group"
  description = "HashiStack Sercuriy Group"
  vpc_id      = var.vpc_id

  ingress {
    from_port = -1
    to_port = -1
    protocol = "icmp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  ingress {
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
    cidr_blocks     = ["0.0.0.0/0"]
  }

  ingress {
    protocol    = "tcp"
    from_port   = 443
    to_port     = 443
    cidr_blocks     = ["0.0.0.0/0"]
  }

  ingress {
    protocol    = "tcp"
    from_port   = 80
    to_port     = 80
    cidr_blocks     = ["0.0.0.0/0"]
  }

  ingress {
    protocol    = "tcp"
    from_port   = 8080
    to_port     = 8080
    cidr_blocks     = ["0.0.0.0/0"]
  }


  # for the cluster-2
  ingress {
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 9200
    to_port     = 9200
  }

  ingress {
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    from_port = var.vault_http_port
    to_port = var.vault_http_port
  }

  ingress {
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
    from_port   = var.consul_http_port
    to_port     = var.consul_http_port
  }

  ingress {
    cidr_blocks = var.cidr_blocks
    protocol    = "tcp"
    from_port   = var.consul_https_port
    to_port     = var.consul_https_port
  }

  ingress {
    cidr_blocks = var.cidr_blocks
    protocol    = "tcp"
    from_port   = var.consul_grpc_port
    to_port     = var.consul_grpc_port
  }

  ingress {
    cidr_blocks = var.cidr_blocks
    protocol    = "tcp"
    from_port   = var.consul_cluster_rpc_port
    to_port     = var.consul_cluster_rpc_port
  }

  ingress {
    cidr_blocks = var.cidr_blocks
    protocol    = "tcp"
    from_port   = var.consul_lan_serf
    to_port     = var.consul_lan_serf
  }

  ingress {
    cidr_blocks = var.cidr_blocks
    protocol    = "tcp"
    from_port   = var.consul_wan_serf
    to_port     = var.consul_wan_serf
  }

  ingress {
    protocol = "tcp"
    cidr_blocks = var.cidr_blocks
    from_port = var.nomad_http_port
    to_port = var.nomad_http_port
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
  }

}
