output "cluster_name" {
  value = module.eks.cluster_id
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "ecr_repository_urls" {
  value = {
    for name, repo in aws_ecr_repository.service : name => repo.repository_url
  }
}
