resource "aws_ecr_repository" "example" {
  name                 = "my-ecr-repo"
  image_tag_mutability = "MUTABLE"   # Allows overwriting tags (use IMMUTABLE for stricter control)

  image_scanning_configuration {
    scan_on_push = true              # Automatically scan images for vulnerabilities when pushed
  }

  tags = {
    Name        = "my-ecr-repo-created-by-ajit"
    Environment = "Dev"
  }
}