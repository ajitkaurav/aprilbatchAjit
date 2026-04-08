
module aws_ec2 {
  source = "./aws_ec2"
  ami_id = data.aws_ami.window.id
  instance_type = var.instance_type
}

module aws_s3 {
  count      = var.create_s3 ? 1 : 0
  source     = "./aws_s3"
  bucketname = var.bucketname
}






