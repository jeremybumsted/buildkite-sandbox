#!/bin/bash

body=$(cat << EOF
   Terraform used the selected providers to generate the following execution
   plan. Resource actions are indicated with the following symbols:
   [32m+[0m create[0m
   [33m~[0m update in-place[0m
   Terraform will perform the following actions:
   [1m  # aws_autoscaling_group.ks2_infra-compute_ecs_instances_asg_capacity_provider_on_demand[0m will be updated in-place
   [0m  [33m~[0m[0m resource "aws_autoscaling_group" "ks2_infra-compute_ecs_instances_asg_capacity_provider_on_demand" {
         [32m+[0m[0m desired_capacity_type            = "units"
         id                               = "ks2_infra-compute_ecs_instances_asg_capacity_provider_on_demand"
         name                             = "ks2_infra-compute_ecs_instances_asg_capacity_provider_on_demand"
         [90m# (26 unchanged attributes hidden)[0m[0m
         [90m# (13 unchanged blocks hidden)[0m[0m
      }
   [1m  # aws_autoscaling_group.ks2_infra-kinesiscomputeflash-green_ecs_instances_asg_capacity_provider_on_demand[0m will be updated in-place
   [0m  [33m~[0m[0m resource "aws_autoscaling_group" "ks2_infra-kinesiscomputeflash-green_ecs_instances_asg_capacity_provider_on_demand" {
         [32m+[0m[0m desired_capacity_type            = "units"
         id                               = "ks2_infra-kinesiscomputeflash-green_ecs_instances_asg_capacity_provider_on_demand"
         name                             = "ks2_infra-kinesiscomputeflash-green_ecs_instances_asg_capacity_provider_on_demand"
         [90m# (26 unchanged attributes hidden)[0m[0m
         [90m# (13 unchanged blocks hidden)[0m[0m
      }
   [1m  # aws_autoscaling_group.ks2_infra-kinesiscomputeflash_ecs_instances_asg_capacity_provider_on_demand[0m will be updated in-place
   [0m  [33m~[0m[0m resource "aws_autoscaling_group" "ks2_infra-kinesiscomputeflash_ecs_instances_asg_capacity_provider_on_demand" {
         [32m+[0m[0m desired_capacity_type            = "units"
         id                               = "ks2_infra-kinesiscomputeflash_ecs_instances_asg_capacity_provider_on_demand"
         name                             = "ks2_infra-kinesiscomputeflash_ecs_instances_asg_capacity_provider_on_demand"
         [90m# (26 unchanged attributes hidden)[0m[0m
         [90m# (13 unchanged blocks hidden)[0m[0m
      }
   [1m  # aws_autoscaling_group.ks2_infra-memory_ecs_instances_asg_capacity_provider_on_demand[0m will be updated in-place
   [0m  [33m~[0m[0m resource "aws_autoscaling_group" "ks2_infra-memory_ecs_instances_asg_capacity_provider_on_demand" {
         [32m+[0m[0m desired_capacity_type            = "units"
         id                               = "ks2_infra-memory_ecs_instances_asg_capacity_provider_on_demand"
         name                             = "ks2_infra-memory_ecs_instances_asg_capacity_provider_on_demand"
         [90m# (26 unchanged attributes hidden)[0m[0m
         [90m# (13 unchanged blocks hidden)[0m[0m
      }
   [1m  # aws_autoscaling_group.prod_ecs_instances_asg_capacity_provider_on_demand[0m will be updated in-place
   [0m  [33m~[0m[0m resource "aws_autoscaling_group" "prod_ecs_instances_asg_capacity_provider_on_demand" {
         [32m+[0m[0m desired_capacity_type            = "units"
         id                               = "prod_ecs_instances_asg_capacity_provider_on_demand"
         name                             = "prod_ecs_instances_asg_capacity_provider_on_demand"
         [90m# (26 unchanged attributes hidden)[0m[0m
         [90m# (13 unchanged blocks hidden)[0m[0m
      }
   [1m  # aws_autoscaling_group.prod_infra-compute-largeworkers_ecs_instances_asg_capacity_provider_on_demand[0m will be updated in-place
   [0m  [33m~[0m[0m resource "aws_autoscaling_group" "prod_infra-compute-largeworkers_ecs_instances_asg_capacity_provider_on_demand" {
         [32m+[0m[0m desired_capacity_type            = "units"
         id                               = "prod_infra-compute-largeworkers_ecs_instances_asg_capacity_provider_on_demand"
         [33m~[0m[0m max_size                         = 3492 [33m->[0m[0m 3672
         name                             = "prod_infra-compute-largeworkers_ecs_instances_asg_capacity_provider_on_demand"
         [90m# (25 unchanged attributes hidden)[0m[0m
         [90m# (13 unchanged blocks hidden)[0m[0m
      }
   [1m  # aws_autoscaling_group.prod_infra-compute_ecs_instances_asg_capacity_provider_on_demand[0m will be updated in-place
   [0m  [33m~[0m[0m resource "aws_autoscaling_group" "prod_infra-compute_ecs_instances_asg_capacity_provider_on_demand" {
         [32m+[0m[0m desired_capacity_type            = "units"
         id                               = "prod_infra-compute_ecs_instances_asg_capacity_provider_on_demand"
         name                             = "prod_infra-compute_ecs_instances_asg_capacity_provider_on_demand"
         [90m# (26 unchanged attributes hidden)[0m[0m
         [90m# (13 unchanged blocks hidden)[0m[0m
      }
   [1m  # aws_autoscaling_group.prod_infra-memory_ecs_instances_asg_capacity_provider_on_demand[0m will be updated in-place
   [0m  [33m~[0m[0m resource "aws_autoscaling_group" "prod_infra-memory_ecs_instances_asg_capacity_provider_on_demand" {
         [32m+[0m[0m desired_capacity_type            = "units"
         id                               = "prod_infra-memory_ecs_instances_asg_capacity_provider_on_demand"
         name                             = "prod_infra-memory_ecs_instances_asg_capacity_provider_on_demand"
         [90m# (26 unchanged attributes hidden)[0m[0m
         [90m# (13 unchanged blocks hidden)[0m[0m
      }
   [1m  # aws_autoscaling_group.prod_reports-flash_ecs_instances_asg_capacity_provider_on_demand[0m will be updated in-place
   [0m  [33m~[0m[0m resource "aws_autoscaling_group" "prod_reports-flash_ecs_instances_asg_capacity_provider_on_demand" {
         [32m+[0m[0m desired_capacity_type            = "units"
         id                               = "prod_reports-flash_ecs_instances_asg_capacity_provider_on_demand"
         name                             = "prod_reports-flash_ecs_instances_asg_capacity_provider_on_demand"
         [90m# (26 unchanged attributes hidden)[0m[0m
         [90m# (13 unchanged blocks hidden)[0m[0m
      }
   [1m  # aws_autoscaling_group.prod_safety-gpu_ecs_instances_asg_capacity_provider_on_demand[0m will be updated in-place
   [0m  [33m~[0m[0m resource "aws_autoscaling_group" "prod_safety-gpu_ecs_instances_asg_capacity_provider_on_demand" {
         [32m+[0m[0m desired_capacity_type            = "units"
         id                               = "prod_safety-gpu_ecs_instances_asg_capacity_provider_on_demand"
         name                             = "prod_safety-gpu_ecs_instances_asg_capacity_provider_on_demand"
         [90m# (26 unchanged attributes hidden)[0m[0m
         [90m# (13 unchanged blocks hidden)[0m[0m
      }
   [1m  # module.samsara_ecs_cell_disruptive.aws_security_group_rule.prod_instance_allow_cell_ingress[0m will be created
   [0m  [32m+[0m[0m resource "aws_security_group_rule" "prod_instance_allow_cell_ingress" {
         [32m+[0m[0m from_port                = 0
         [32m+[0m[0m id                       = (known after apply)
         [32m+[0m[0m protocol                 = "tcp"
         [32m+[0m[0m security_group_id        = "sg-097daccd59a607648"
         [32m+[0m[0m security_group_rule_id   = (known after apply)
         [32m+[0m[0m self                     = false
         [32m+[0m[0m source_security_group_id = "sg-058c61ae2b359978c"
         [32m+[0m[0m to_port                  = 65535
         [32m+[0m[0m type                     = "ingress"
      }
   [1m  # module.samsara_ecs_cell_ks2.aws_s3_bucket_policy.cloudserver_frontend[0][0m will be created
   [0m  [32m+[0m[0m resource "aws_s3_bucket_policy" "cloudserver_frontend" {
         [32m+[0m[0m bucket = "ks2.frontend.cloud.eu.samsara.com"
         [32m+[0m[0m id     = (known after apply)
         [32m+[0m[0m policy = jsonencode(
               {
               [32m+[0m[0m Statement = [
                     [32m+[0m[0m {
                        [32m+[0m[0m Action    = [
                           [32m+[0m[0m "s3:*",
                           ]
                        [32m+[0m[0m Condition = {
                           [32m+[0m[0m Bool = {
                                 [32m+[0m[0m "aws:SecureTransport" = false
                              }
                           }
                        [32m+[0m[0m Effect    = "Deny"
                        [32m+[0m[0m Principal = {
                           [32m+[0m[0m AWS = "*"
                           }
                        [32m+[0m[0m Resource  = [
                           [32m+[0m[0m "arn:aws:s3:::ks2.frontend.cloud.eu.samsara.com",
                           [32m+[0m[0m "arn:aws:s3:::ks2.frontend.cloud.eu.samsara.com/*",
                           ]
                        [32m+[0m[0m Sid       = "RequireTLS"
                     },
                  ]
               [32m+[0m[0m Version   = "2012-10-17"
               }
         )
      }
   [1m  # module.samsara_ecs_cell_ks2.aws_s3_bucket_policy.cloudserver_frontend_access_log_bucket[0][0m will be created
   [0m  [32m+[0m[0m resource "aws_s3_bucket_policy" "cloudserver_frontend_access_log_bucket" {
         [32m+[0m[0m bucket = "cloudserver-frontend-eu-ks2-access-log"
         [32m+[0m[0m id     = (known after apply)
         [32m+[0m[0m policy = jsonencode(
               {
               [32m+[0m[0m Statement = [
                     [32m+[0m[0m {
                        [32m+[0m[0m Action    = [
                           [32m+[0m[0m "s3:*",
                           ]
                        [32m+[0m[0m Condition = {
                           [32m+[0m[0m Bool = {
                                 [32m+[0m[0m "aws:SecureTransport" = false
                              }
                           }
                        [32m+[0m[0m Effect    = "Deny"
                        [32m+[0m[0m Principal = {
                           [32m+[0m[0m AWS = "*"
                           }
                        [32m+[0m[0m Resource  = [
                           [32m+[0m[0m "arn:aws:s3:::cloudserver-frontend-eu-ks2-access-log",
                           [32m+[0m[0m "arn:aws:s3:::cloudserver-frontend-eu-ks2-access-log/*",
                           ]
                        [32m+[0m[0m Sid       = "RequireTLS"
                     },
                  ]
               [32m+[0m[0m Version   = "2012-10-17"
               }
         )
      }
   [1m  # module.samsara_ecs_cell_prod.aws_s3_bucket_policy.cloudserver_frontend[0][0m will be created
   [0m  [32m+[0m[0m resource "aws_s3_bucket_policy" "cloudserver_frontend" {
         [32m+[0m[0m bucket = "prod.frontend.cloud.eu.samsara.com"
         [32m+[0m[0m id     = (known after apply)
         [32m+[0m[0m policy = jsonencode(
               {
               [32m+[0m[0m Statement = [
                     [32m+[0m[0m {
                        [32m+[0m[0m Action    = [
                           [32m+[0m[0m "s3:*",
                           ]
                        [32m+[0m[0m Condition = {
                           [32m+[0m[0m Bool = {
                                 [32m+[0m[0m "aws:SecureTransport" = false
                              }
                           }
                        [32m+[0m[0m Effect    = "Deny"
                        [32m+[0m[0m Principal = {
                           [32m+[0m[0m AWS = "*"
                           }
                        [32m+[0m[0m Resource  = [
                           [32m+[0m[0m "arn:aws:s3:::prod.frontend.cloud.eu.samsara.com",
                           [32m+[0m[0m "arn:aws:s3:::prod.frontend.cloud.eu.samsara.com/*",
                           ]
                        [32m+[0m[0m Sid       = "RequireTLS"
                     },
                  ]
               [32m+[0m[0m Version   = "2012-10-17"
               }
         )
      }
   [1m  # module.samsara_ecs_cell_prod.aws_s3_bucket_policy.cloudserver_frontend_access_log_bucket[0][0m will be created
   [0m  [32m+[0m[0m resource "aws_s3_bucket_policy" "cloudserver_frontend_access_log_bucket" {
         [32m+[0m[0m bucket = "cloudserver-frontend-eu-prod-access-log"
         [32m+[0m[0m id     = (known after apply)
         [32m+[0m[0m policy = jsonencode(
               {
               [32m+[0m[0m Statement = [
                     [32m+[0m[0m {
                        [32m+[0m[0m Action    = [
                           [32m+[0m[0m "s3:*",
                           ]
                        [32m+[0m[0m Condition = {
                           [32m+[0m[0m Bool = {
                                 [32m+[0m[0m "aws:SecureTransport" = false
                              }
                           }
                        [32m+[0m[0m Effect    = "Deny"
                        [32m+[0m[0m Principal = {
                           [32m+[0m[0m AWS = "*"
                           }
                        [32m+[0m[0m Resource  = [
                           [32m+[0m[0m "arn:aws:s3:::cloudserver-frontend-eu-prod-access-log",
                           [32m+[0m[0m "arn:aws:s3:::cloudserver-frontend-eu-prod-access-log/*",
                           ]
                        [32m+[0m[0m Sid       = "RequireTLS"
                     },
                  ]
               [32m+[0m[0m Version   = "2012-10-17"
               }
         )
      }
   [1m  # module.samsara_ecs_cell_prod.module.ecs_cluster.aws_security_group_rule.ecs_cluster_egress_ipv6[0m will be created
   [0m  [32m+[0m[0m resource "aws_security_group_rule" "ecs_cluster_egress_ipv6" {
         [32m+[0m[0m from_port                = 0
         [32m+[0m[0m id                       = (known after apply)
         [32m+[0m[0m ipv6_cidr_blocks         = [
            [32m+[0m[0m "::/0",
         ]
         [32m+[0m[0m protocol                 = "-1"
         [32m+[0m[0m security_group_id        = "sg-0b3b3e7949b7c54c6"
         [32m+[0m[0m security_group_rule_id   = (known after apply)
         [32m+[0m[0m self                     = false
         [32m+[0m[0m source_security_group_id = (known after apply)
         [32m+[0m[0m to_port                  = 65535
         [32m+[0m[0m type                     = "egress"
      }
   [1mPlan:[0m 6 to add, 10 to change, 0 to destroy.
   [0m
EOF
)

html_body=$(echo "$body" | terminal-to-html)

annotation=$(cat << EOF

   <details><summary>YOLO</summary>
   <pre class="term"><code>
   ${html_body}
   </code></pre></details>
EOF
)

cat "${annotation}"

buildkite-agent annotate "${annotation}" --style success --ctx "success-ctx"