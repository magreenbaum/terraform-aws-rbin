provider "aws" {
  region = "us-west-2"
}

module "rbin" {
  source = "../../"

  rbin_rule = {
    ebs_snapshot = {
      description   = "EBS Snapshot recycle rule"
      resource_type = "EBS_SNAPSHOT"
      retention_period = {
        retention_period_unit  = "DAYS"
        retention_period_value = 10
      }
      resource_tags = [
        {
          resource_tag_key   = "prod"
          resource_tag_value = "false"
      }]
      lock_configuration = {
        unlock_delay = {
          unlock_delay_unit  = "DAYS"
          unlock_delay_value = 7
        }
      }
    }
    ec2_image = {
      description   = "EC2 image recycle rule"
      resource_type = "EC2_IMAGE"
      retention_period = {
        retention_period_unit  = "DAYS"
        retention_period_value = 7
      }
      resource_tags = [
        {
          resource_tag_key   = "prod"
          resource_tag_value = "true"
        },
        {
          resource_tag_key   = "dev"
          resource_tag_value = "true"
        }
      ]
      lock_configuration = {
        unlock_delay = {
          unlock_delay_unit  = "DAYS"
          unlock_delay_value = 7
        }
      }
    }
  }
}