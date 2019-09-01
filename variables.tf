variable "vpc_id" {}

variable "http_port" {
  defaults = "8500"
}
variable "https_port" {
  defaults = "8501"
}
variable "grpc_port" {
  defaults = "8502"
}

variable "cluster_rpc_port" {
  defaults = "8300"
}
variable "lan_serf" {
  defaults = "8301"
}

variable "cidr_blocks" {
  type     = list(string)
  defaults = ["0.0.0.0/0"]
}
