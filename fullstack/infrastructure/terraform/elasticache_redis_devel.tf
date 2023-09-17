# # ElastiCache for Redis cluster.
# resource "aws_elasticache_replication_group" "redis_devel" {
#   count = var.devel_enabled ? 1 : 0

#   replication_group_id = "${local.deployment}-redis-devel"
#   replication_group_description = "${var.environment} (Terraform)"

#   engine = "redis"
#   engine_version = "5.0.6"  # https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/supported-engine-versions.html
#   port = 6379
#   parameter_group_name = "default.redis5.0"  # https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.Redis.html#ParameterGroups.Redis.5.0

#   # Don't specifiy AZs: "Error creating Elasticache Replication Group:
#   # InvalidParameterValue: When specifying preferred availability zones, the
#   # number of cache clusters must be specified and must match the number of
#   # preferred availability zones." availability_zones =
#   # data.aws_availability_zones.aaz.names"
#   subnet_group_name = aws_elasticache_subnet_group.redis_subnet_group.name
#   security_group_ids = [module.data_security_group.this_security_group_id]

#   node_type = "cache.t3.micro"
#   number_cache_clusters = 1
#   automatic_failover_enabled = false

#   at_rest_encryption_enabled = false
#   transit_encryption_enabled = false

#   maintenance_window = "Sun:00:00-Sun:03:00"
#   auto_minor_version_upgrade = false
#   apply_immediately = true

#   snapshot_window = "03:01-04:01"
#   snapshot_retention_limit = 3

#   tags = local.tags
# }

# # ElasiCache subnet group which use the VPC's private subnets.
# resource "aws_elasticache_subnet_group" "redis_devel_subnet_group" {
#   count = var.devel_enabled ? 1 : 0

#   name = "${local.deployment}-redis-devel-subnetgroup"
#   subnet_ids = module.vpc.private_subnets
# }
