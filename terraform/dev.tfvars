ami_id = "ami-08251ad549dc5db38"
instance_type = {
  "web-server-1"    = "t3.micro"
}
image_identifier = "public.ecr.aws/aws-containers/hello-app-runner:latest"
create_s3  = true
bucketname     = "ajit-terraform-bucket-20242"