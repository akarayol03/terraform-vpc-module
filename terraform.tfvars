# Generic variables
region = "us-east-1"

# VPC variables
vpc_name             = "test-vpc"
vpc_cidr             = "10.0.0.0/16"
vpc_azs              = ["us-east-1a", "us-east-1b", "us-east-1c"]
vpc_public_subnets   = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
vpc_private_subnets  = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
vpc_database_subnets = ["10.0.21.0/24", "10.0.22.0/24", "10.0.23.0/24"]
vpc_tags             = { "created-by" = "terraform" }

# ASG variables
asg_sg_name                             = "test-asg-sg"
asg_sg_description                      = "test-asg-sg"
asg_sg_tags                             = { "Name" = "test-asg-sg", "created-by" = "terraform" }
asg_name                                = "test-asg"
asg_min_size                            = 0
asg_max_size                            = 2
asg_desired_capacity                    = 2
asg_wait_for_capacity_timeout           = 0
asg_health_check_type                   = "EC2"
asg_launch_template_name                = "test-lt"
asg_launch_template_description         = "test-lt"
asg_update_default_version              = true
asg_image_id                            = "ami-026b57f3c383c2eec"
asg_instance_type                       = "t3.micro"
asg_ebs_optimized                       = true
asg_enable_monitoring                   = true
asg_create_iam_instance_profile         = true
asg_iam_role_name                       = "test-asg-iam-role"
asg_iam_role_path                       = "/ec2/"
asg_iam_role_description                = "test-asg-iam-role"
asg_iam_role_tags                       = { "Name" = "test-asg-iam-role", "created-by" = "terraform" }
asg_block_device_mappings_volume_size_0 = 20
asg_block_device_mappings_volume_size_1 = 30
asg_instance_tags                       = { "Name" = "test-asg-instance", "created-by" = "terraform" }
asg_volume_tags                         = { "Name" = "test-asg-volume", "created-by" = "terraform" }
asg_tags                                = { "Name" = "test-asg", "created-by" = "terraform" }

# ALB variables
alb_sg_name                    = "test-alb-sg"
alb_sg_ingress_cidr_blocks     = ["0.0.0.0/0"]
alb_sg_description             = "test-alb-sg"
alb_sg_tags                    = { "Name" = "test-alb-sg", "created-by" = "terraform" }
alb_name                       = "test-alb"
alb_http_tcp_listeners_port    = 80
alb_target_group_name          = "test-alb-tg"
alb_target_groups_backend_port = 80
alb_tags                       = { "Name" = "test-alb", "created-by" = "terraform" }

# RDS variables
rds_sg_name                               = "test-rds-sg"
rds_sg_description                        = "test-rds-sg"
rds_sg_tags                               = { "Name" = "test-rds-sg", "created-by" = "terraform" }
rds_identifier                            = "test-rds"
rds_mysql_engine                          = "mysql"
rds_engine_version                        = "8.0.27"
rds_family                                = "mysql8.0" # DB parameter group
rds_major_engine_version                  = "8.0"      # DB option group
rds_instance_class                        = "db.t2.small"
rds_allocated_storage                     = 20
rds_max_allocated_storage                 = 100
rds_db_name                               = "test_mysql"
rds_username                              = "test_user"
rds_port                                  = 3306
rds_multi_az                              = false
rds_maintenance_window                    = "Mon:00:00-Mon:03:00"
rds_backup_window                         = "03:00-06:00"
rds_enabled_cloudwatch_logs_exports       = ["general"]
rds_create_cloudwatch_log_group           = true
rds_backup_retention_period               = 0
rds_skip_final_snapshot                   = true
rds_deletion_protection                   = false
rds_performance_insights_enabled          = false
rds_performance_insights_retention_period = 7
rds_create_monitoring_role                = true
rds_monitoring_interval                   = 60
rds_tags                                  = { "Name" = "test-rds", "created-by" = "terraform" }
rds_db_instance_tags                      = { "Name" = "test-rds-instance", "created-by" = "terraform" }
rds_db_option_group_tags                  = { "Name" = "test-rds-option-group", "created-by" = "terraform" }
rds_db_parameter_group_tags               = { "Name" = "test-rds-db-parameter-group", "created-by" = "terraform" }
rds_db_subnet_group_tags                  = { "Name" = "test-rds-db-subnet-group", "created-by" = "terraform" }
