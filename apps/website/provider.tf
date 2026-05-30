provider "aws" {
  region = var.region
  alias  = "us_east_1"
}

provider "aws" {
  region = var.region
}
