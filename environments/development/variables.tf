variable "project_id" {
  type        = string
  description = "The unique identifier for the GCP project for resource organization and billing."
  validation {
    condition     = length(var.project_id) > 0
    error_message = "The project_id must not be empty."
  }
}

variable "project_region" {
  type        = string
  description = "The GCP region where the resources will be deployed, impacting latency and compliance."
  validation {
    condition     = length(var.project_region) > 0
    error_message = "The project_region must be specified."
  }
}

variable "vpc_name" {
  type = string
  description = "The name of the Virtual Private Cloud (VPC) to be created or used. This name follows the enterprise naming convention: <project>-<environment>-vpc, where 'project' represents the application or service name, and 'environment' specifies the deployment stage (e.g., dev, staging, prod)."
}

variable "subnet_name" {
  type        = string
  description = "The name of the subnet to be created or used within the VPC. This should follow the naming convention: <project>-<environment>-<region>-<purpose>-subnet. The name should be meaningful and help identify the subnet's purpose (e.g., public, private, backend)."
}