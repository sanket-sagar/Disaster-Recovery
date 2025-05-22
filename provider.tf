provider "aws" {
  region = "us-east-1"
  alias = "useast1"
  shared_credentials_files = ["/Users/sanke/.aws/credentials"]
}

provider "aws" {
  region = "ap-south-1"
  alias = "apsouth1"
  shared_credentials_files = ["/Users/sanke/.aws/credentials"]
}
