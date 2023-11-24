resource "aws_iam_role" "eks_cluster_role" {
  name                = "chaitanya-cloud-cluster-role"
  description         = "Cluster role for EKS"
  assume_role_policy  = data.aws_iam_policy_document.eks_cluster_role_assume_policy.json
  managed_policy_arns = ["arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"]
}

data "aws_iam_policy_document" "eks_cluster_role_assume_policy" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]
    principals {
      identifiers = ["eks.amazonaws.com"]
      type        = "Service"
    }
  }
}

resource "aws_kms_key" "eks_cluster_key" {
  description             = "KMS key for envelope encryption for EKS secrets"
  key_usage               = "ENCRYPT_DECRYPT"
  deletion_window_in_days = 7
}

resource "aws_kms_alias" "eks_cluster_key" {
  name          = "alias/chaitanya_eks_key"
  target_key_id = aws_kms_key.eks_cluster_key.key_id
}

// REgister only private subnets
#
#resource "aws_eks_cluster" "chaitanya_cloud" {
#  name = "chaitanya-cloud"
#
#}