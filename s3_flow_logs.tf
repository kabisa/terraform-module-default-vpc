resource "aws_s3_bucket" "flow_logs" {
  count         = "${var.enable_vpc_flow_logs}"
  acl           = "private"
  bucket_prefix = "vpc-flow-logs-${var.account_id}-"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
