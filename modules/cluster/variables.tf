# variable "private_subnet_id_1" {
#   description = ""
#   type        = string
# }

# variable "private_subnet_id_2" {
#   description = ""
#   type        = string
# }

# variable "public_subnet_id_1" {
#   description = ""
#   type        = string
# }

# variable "public_subnet_id_2" {
#   description = ""
#   type        = string
# }

variable "private_subnet_ids" {
  description = ""
  type        = list(string)
  # default     = []
}

variable "public_subnet_ids" {
  description = ""
  type        = list(string)
  # default     = []
}

variable "aws_eks_cluster_name" {
  type = string
  default = ""
}

variable "cluster_name" {
  default = ""
  type    = string
}