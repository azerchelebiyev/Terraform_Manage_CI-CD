resource "aws_elasticsearch_domain" "this" {
  domain_name = var.domain_name

  elasticsearch_version = "7.10"

  cluster_config {
    instance_type  = "t2.small.elasticsearch"
    instance_count = 1
  }

  ebs_options {
    ebs_enabled = true
    volume_size = 10
  }

  tags = {
    Environment = var.env
  }
}

output "elasticsearch_domain_endpoint" {
  value = aws_elasticsearch_domain.this.endpoint
}
