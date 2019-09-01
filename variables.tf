variable "vpc_id" {}

variable "http_port" {
  default = "8500"
}
variable "https_port" {
  default = "8501"
}
variable "grpc_port" {
  default = "8502"
}

variable "cluster_rpc_port" {
  default = "8300"
}
variable "lan_serf" {
  default = "8301"
}

variable "lan_serf" {
  default = "8302"
}

variable "cidr_blocks" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}
