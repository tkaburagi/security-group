variable "vpc_id" {}

variable "consul_http_port" {
  default = "8500"
}

variable "consul_https_port" {
  default = "8501"
}

variable "consul_grpc_port" {
  default = "8502"
}

variable "consul_cluster_rpc_port" {
  default = "8300"
}

variable "consul_lan_serf" {
  default = "8301"
}

variable "consul_wan_serf" {
  default = "8302"
}

variable "vault_http_port" {
  default = "8200"
}

variable "cidr_blocks" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}
