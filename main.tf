resource "aws_s3_bucket" "demo_bucket_1" {
  provider = aws.useast1
  bucket   = "disaster-recovery-demo-bucket-1"


  tags = {
    Name        = "Demo Bucket 1"
    Environment = "Dev"
  }
  
}

resource "aws_s3_bucket" "demo_bucket_2" {
  provider = aws.apsouth1
  bucket   = "disaster-recovery-demo-bucket-2"


  tags = {
    Name        = "Demo Bucket 2"
    Environment = "Dev"
  }
  
}


resource "aws_instance" "demo_instance_1" {
  provider = aws.useast1
  ami      = "ami-084568db4383264d4" # Example AMI ID

  instance_type = "t2.micro"

  tags = {
    Name        = "Demo Instance 1"
    Environment = "Dev"
  }
  
}

resource "aws_instance" "demo_instance_2" {
  provider = aws.apsouth1
  ami      = "ami-0e35ddab05955cf57" # Example AMI ID 
  instance_type = "t2.micro"

  tags = {
    Name        = "Demo Instance 2"
    Environment = "Dev"
  }
  
}