# Default provider
provider "aws" {
  region = "${var.region}"

  assume_role {
    role_arn = "arn:aws:iam::${var.account_id}:role/${var.role}"
  }
}

# us-east-1
provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"

  assume_role {
    role_arn = "arn:aws:iam::${var.account_id}:role/${var.role}"
  }
}

resource "aws_default_vpc" "us-east-1" {
  provider = "aws.us-east-1"
}

resource "aws_default_security_group" "us-east-1" {
  provider = "aws.us-east-1"
  vpc_id   = "${aws_default_vpc.us-east-1.id}"
}

resource "aws_flow_log" "us-east-1" {
  count                = "${var.enable_vpc_flow_logs}"
  provider             = "aws.us-east-1"
  traffic_type         = "ALL"
  vpc_id               = "${aws_default_vpc.us-east-1.id}"
  log_destination_type = "s3"
  log_destination      = "${aws_s3_bucket.flow_logs.arn}"
}

# us-east-2
provider "aws" {
  alias  = "us-east-2"
  region = "us-east-2"

  assume_role {
    role_arn = "arn:aws:iam::${var.account_id}:role/${var.role}"
  }
}

resource "aws_default_vpc" "us-east-2" {
  provider = "aws.us-east-2"
}

resource "aws_default_security_group" "us-east-2" {
  provider = "aws.us-east-2"
  vpc_id   = "${aws_default_vpc.us-east-2.id}"
}

resource "aws_flow_log" "us-east-2" {
  count                = "${var.enable_vpc_flow_logs}"
  provider             = "aws.us-east-2"
  traffic_type         = "ALL"
  vpc_id               = "${aws_default_vpc.us-east-2.id}"
  log_destination_type = "s3"
  log_destination      = "${aws_s3_bucket.flow_logs.arn}"
}

# us-west-1
provider "aws" {
  alias  = "us-west-1"
  region = "us-west-1"

  assume_role {
    role_arn = "arn:aws:iam::${var.account_id}:role/${var.role}"
  }
}

resource "aws_default_vpc" "us-west-1" {
  provider = "aws.us-west-1"
}

resource "aws_default_security_group" "us-west-1" {
  provider = "aws.us-west-1"
  vpc_id   = "${aws_default_vpc.us-west-1.id}"
}

resource "aws_flow_log" "us-west-1" {
  count                = "${var.enable_vpc_flow_logs}"
  provider             = "aws.us-west-1"
  traffic_type         = "ALL"
  vpc_id               = "${aws_default_vpc.us-west-1.id}"
  log_destination_type = "s3"
  log_destination      = "${aws_s3_bucket.flow_logs.arn}"
}

# us-west-2
provider "aws" {
  alias  = "us-west-2"
  region = "us-west-2"

  assume_role {
    role_arn = "arn:aws:iam::${var.account_id}:role/${var.role}"
  }
}

resource "aws_default_vpc" "us-west-2" {
  provider = "aws.us-west-2"
}

resource "aws_default_security_group" "us-west-2" {
  provider = "aws.us-west-2"
  vpc_id   = "${aws_default_vpc.us-west-2.id}"
}

resource "aws_flow_log" "us-west-2" {
  count                = "${var.enable_vpc_flow_logs}"
  provider             = "aws.us-west-2"
  traffic_type         = "ALL"
  vpc_id               = "${aws_default_vpc.us-west-2.id}"
  log_destination_type = "s3"
  log_destination      = "${aws_s3_bucket.flow_logs.arn}"
}

# ca-central-1
provider "aws" {
  alias  = "ca-central-1"
  region = "ca-central-1"

  assume_role {
    role_arn = "arn:aws:iam::${var.account_id}:role/${var.role}"
  }
}

resource "aws_default_vpc" "ca-central-1" {
  provider = "aws.ca-central-1"
}

resource "aws_default_security_group" "ca-central-1" {
  provider = "aws.ca-central-1"
  vpc_id   = "${aws_default_vpc.ca-central-1.id}"
}

resource "aws_flow_log" "ca-central-1" {
  count                = "${var.enable_vpc_flow_logs}"
  provider             = "aws.ca-central-1"
  traffic_type         = "ALL"
  vpc_id               = "${aws_default_vpc.ca-central-1.id}"
  log_destination_type = "s3"
  log_destination      = "${aws_s3_bucket.flow_logs.arn}"
}

# eu-central-1
provider "aws" {
  alias  = "eu-central-1"
  region = "eu-central-1"

  assume_role {
    role_arn = "arn:aws:iam::${var.account_id}:role/${var.role}"
  }
}

resource "aws_default_vpc" "eu-central-1" {
  provider = "aws.eu-central-1"
}

resource "aws_default_security_group" "eu-central-1" {
  provider = "aws.eu-central-1"
  vpc_id   = "${aws_default_vpc.eu-central-1.id}"
}

resource "aws_flow_log" "eu-central-1" {
  count                = "${var.enable_vpc_flow_logs}"
  provider             = "aws.eu-central-1"
  traffic_type         = "ALL"
  vpc_id               = "${aws_default_vpc.eu-central-1.id}"
  log_destination_type = "s3"
  log_destination      = "${aws_s3_bucket.flow_logs.arn}"
}

# eu-west-1
provider "aws" {
  alias  = "eu-west-1"
  region = "eu-west-1"

  assume_role {
    role_arn = "arn:aws:iam::${var.account_id}:role/${var.role}"
  }
}

resource "aws_default_vpc" "eu-west-1" {
  provider = "aws.eu-west-1"
}

resource "aws_default_security_group" "eu-west-1" {
  provider = "aws.eu-west-1"
  vpc_id   = "${aws_default_vpc.eu-west-1.id}"
}

resource "aws_flow_log" "eu-west-1" {
  count                = "${var.enable_vpc_flow_logs}"
  provider             = "aws.eu-west-1"
  traffic_type         = "ALL"
  vpc_id               = "${aws_default_vpc.eu-west-1.id}"
  log_destination_type = "s3"
  log_destination      = "${aws_s3_bucket.flow_logs.arn}"
}

# eu-west-2
provider "aws" {
  alias  = "eu-west-2"
  region = "eu-west-2"

  assume_role {
    role_arn = "arn:aws:iam::${var.account_id}:role/${var.role}"
  }
}

resource "aws_default_vpc" "eu-west-2" {
  provider = "aws.eu-west-2"
}

resource "aws_default_security_group" "eu-west-2" {
  provider = "aws.eu-west-2"
  vpc_id   = "${aws_default_vpc.eu-west-2.id}"
}

resource "aws_flow_log" "eu-west-2" {
  count                = "${var.enable_vpc_flow_logs}"
  provider             = "aws.eu-west-2"
  traffic_type         = "ALL"
  vpc_id               = "${aws_default_vpc.eu-west-2.id}"
  log_destination_type = "s3"
  log_destination      = "${aws_s3_bucket.flow_logs.arn}"
}

# eu-west-3
provider "aws" {
  alias  = "eu-west-3"
  region = "eu-west-3"

  assume_role {
    role_arn = "arn:aws:iam::${var.account_id}:role/${var.role}"
  }
}

resource "aws_default_vpc" "eu-west-3" {
  provider = "aws.eu-west-3"
}

resource "aws_default_security_group" "eu-west-3" {
  provider = "aws.eu-west-3"
  vpc_id   = "${aws_default_vpc.eu-west-3.id}"
}

resource "aws_flow_log" "eu-west-3" {
  count                = "${var.enable_vpc_flow_logs}"
  provider             = "aws.eu-west-3"
  traffic_type         = "ALL"
  vpc_id               = "${aws_default_vpc.eu-west-3.id}"
  log_destination_type = "s3"
  log_destination      = "${aws_s3_bucket.flow_logs.arn}"
}

# eu-north-1
provider "aws" {
  alias  = "eu-north-1"
  region = "eu-north-1"

  assume_role {
    role_arn = "arn:aws:iam::${var.account_id}:role/${var.role}"
  }
}

resource "aws_default_vpc" "eu-north-1" {
  provider = "aws.eu-north-1"
}

resource "aws_default_security_group" "eu-north-1" {
  provider = "aws.eu-north-1"
  vpc_id   = "${aws_default_vpc.eu-north-1.id}"
}

resource "aws_flow_log" "eu-north-1" {
  count                = "${var.enable_vpc_flow_logs}"
  provider             = "aws.eu-north-1"
  traffic_type         = "ALL"
  vpc_id               = "${aws_default_vpc.eu-north-1.id}"
  log_destination_type = "s3"
  log_destination      = "${aws_s3_bucket.flow_logs.arn}"
}

# ap-northeast-1
provider "aws" {
  alias  = "ap-northeast-1"
  region = "ap-northeast-1"

  assume_role {
    role_arn = "arn:aws:iam::${var.account_id}:role/${var.role}"
  }
}

resource "aws_default_vpc" "ap-northeast-1" {
  provider = "aws.ap-northeast-1"
}

resource "aws_default_security_group" "ap-northeast-1" {
  provider = "aws.ap-northeast-1"
  vpc_id   = "${aws_default_vpc.ap-northeast-1.id}"
}

resource "aws_flow_log" "ap-northeast-1" {
  count                = "${var.enable_vpc_flow_logs}"
  provider             = "aws.ap-northeast-1"
  traffic_type         = "ALL"
  vpc_id               = "${aws_default_vpc.ap-northeast-1.id}"
  log_destination_type = "s3"
  log_destination      = "${aws_s3_bucket.flow_logs.arn}"
}

# ap-northeast-2
provider "aws" {
  alias  = "ap-northeast-2"
  region = "ap-northeast-2"

  assume_role {
    role_arn = "arn:aws:iam::${var.account_id}:role/${var.role}"
  }
}

resource "aws_default_vpc" "ap-northeast-2" {
  provider = "aws.ap-northeast-2"
}

resource "aws_default_security_group" "ap-northeast-2" {
  provider = "aws.ap-northeast-2"
  vpc_id   = "${aws_default_vpc.ap-northeast-2.id}"
}

resource "aws_flow_log" "ap-northeast-2" {
  count                = "${var.enable_vpc_flow_logs}"
  provider             = "aws.ap-northeast-2"
  traffic_type         = "ALL"
  vpc_id               = "${aws_default_vpc.ap-northeast-2.id}"
  log_destination_type = "s3"
  log_destination      = "${aws_s3_bucket.flow_logs.arn}"
}

# ap-southeast-1
provider "aws" {
  alias  = "ap-southeast-1"
  region = "ap-southeast-1"

  assume_role {
    role_arn = "arn:aws:iam::${var.account_id}:role/${var.role}"
  }
}

resource "aws_default_vpc" "ap-southeast-1" {
  provider = "aws.ap-southeast-1"
}

resource "aws_default_security_group" "ap-southeast-1" {
  provider = "aws.ap-southeast-1"
  vpc_id   = "${aws_default_vpc.ap-southeast-1.id}"
}

resource "aws_flow_log" "ap-southeast-1" {
  count                = "${var.enable_vpc_flow_logs}"
  provider             = "aws.ap-southeast-1"
  traffic_type         = "ALL"
  vpc_id               = "${aws_default_vpc.ap-southeast-1.id}"
  log_destination_type = "s3"
  log_destination      = "${aws_s3_bucket.flow_logs.arn}"
}

# ap-southeast-2
provider "aws" {
  alias  = "ap-southeast-2"
  region = "ap-southeast-2"

  assume_role {
    role_arn = "arn:aws:iam::${var.account_id}:role/${var.role}"
  }
}

resource "aws_default_vpc" "ap-southeast-2" {
  provider = "aws.ap-southeast-2"
}

resource "aws_default_security_group" "ap-southeast-2" {
  provider = "aws.ap-southeast-2"
  vpc_id   = "${aws_default_vpc.ap-southeast-2.id}"
}

resource "aws_flow_log" "ap-southeast-2" {
  count                = "${var.enable_vpc_flow_logs}"
  provider             = "aws.ap-southeast-2"
  traffic_type         = "ALL"
  vpc_id               = "${aws_default_vpc.ap-southeast-2.id}"
  log_destination_type = "s3"
  log_destination      = "${aws_s3_bucket.flow_logs.arn}"
}

# ap-south-1
provider "aws" {
  alias  = "ap-south-1"
  region = "ap-south-1"

  assume_role {
    role_arn = "arn:aws:iam::${var.account_id}:role/${var.role}"
  }
}

resource "aws_default_vpc" "ap-south-1" {
  provider = "aws.ap-south-1"
}

resource "aws_default_security_group" "ap-south-1" {
  provider = "aws.ap-south-1"
  vpc_id   = "${aws_default_vpc.ap-south-1.id}"
}

resource "aws_flow_log" "ap-south-1" {
  count                = "${var.enable_vpc_flow_logs}"
  provider             = "aws.ap-south-1"
  traffic_type         = "ALL"
  vpc_id               = "${aws_default_vpc.ap-south-1.id}"
  log_destination_type = "s3"
  log_destination      = "${aws_s3_bucket.flow_logs.arn}"
}

# sa-east-1
provider "aws" {
  alias  = "sa-east-1"
  region = "sa-east-1"

  assume_role {
    role_arn = "arn:aws:iam::${var.account_id}:role/${var.role}"
  }
}

resource "aws_default_vpc" "sa-east-1" {
  provider = "aws.sa-east-1"
}

resource "aws_default_security_group" "sa-east-1" {
  provider = "aws.sa-east-1"
  vpc_id   = "${aws_default_vpc.sa-east-1.id}"
}

resource "aws_flow_log" "sa-east-1" {
  count                = "${var.enable_vpc_flow_logs}"
  provider             = "aws.sa-east-1"
  traffic_type         = "ALL"
  vpc_id               = "${aws_default_vpc.sa-east-1.id}"
  log_destination_type = "s3"
  log_destination      = "${aws_s3_bucket.flow_logs.arn}"
}
