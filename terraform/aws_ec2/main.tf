resource "aws_instance" "example" {
  for_each      = var.instance_type
  ami           = var.ami_id
  instance_type = each.value

  tags = {
    Name = each.key
  }
}
