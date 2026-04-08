# Define two App Runner services in a map
locals {
  app_runner_services = {
    service1 = "ApplicationCreatedByAjit1"
    service2 = "ApplicationCreatedByAjit2"
  }
}

resource "aws_apprunner_service" "example" {
  for_each = local.app_runner_services

  service_name = each.value

  source_configuration {
    image_repository {
      image_identifier      = var.image_identifier
      image_repository_type = "ECR_PUBLIC"
    }
    auto_deployments_enabled = false
  }

  instance_configuration {
    cpu    = "1024"
    memory = "2048"
  }

  tags = {
    Name = each.value
  }
}
