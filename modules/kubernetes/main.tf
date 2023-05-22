data "aws_eks_cluster_auth" "cluster_auth" {
  name = var.aws_eks_cluster_name[0]
}

provider "kubernetes" {
  host                   = var.aws_eks_cluster_endpoint[0]
  cluster_ca_certificate = "${base64decode(aws_eks_cluster.my_cluster.certificate_authority.0.data)}"
  token                  = "${data.aws_eks_cluster_auth.cluster_auth.token}"
  load_config_file       = false
}

resource "kubernetes_config_map" "aws_auth_configmap" {
  metadata {
    name      = "aws-auth"
    namespace = "kube-system"
  }
data {
    mapRoles = <<YAML
- rolearn: arn:aws:iam::194968952280:role/AmazonEKSNodeRole
  username: system:node:{{EC2PrivateDNSName}}
  groups:
    - system:bootstrappers
    - system:nodes
- rolearn: arn:aws:iam::194968952280:root
  username: kubectl-access-user
  groups:
    - system:masters
YAML
  }
}