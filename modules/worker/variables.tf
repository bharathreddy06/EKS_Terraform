variable "aws_eks_cluster_name" {
  description = ""
  type = list(string)
  # default = ""
}

# variable "private_subnets" {
#   description = ""
#   type        = list(string)
#   default     = []
# }

# variable "cluster_name" {
#   default = ""
#   type    = string
# }

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