# //////////////////////////////
# VARIABLES
# //////////////////////////////
variable "aws_access_key" {}

variable "aws_secret_key" {}

variable "region" {
  default = "eu-west-3"
}

variable "instance_count" {
  type = number
  default = 1
}

variable "instance_tags" {
    type = map
    default = {
      "environment" = "staging"
    }
}
# //////////////////////////////
# OUTPUT INFO
# //////////////////////////////
output "instance-ip" {
  value = module.ec2_cluster.public_ip
}