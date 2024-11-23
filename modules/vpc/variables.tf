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

variable "mtu" {
  type        = string
  default     = "1460"
  description = "The Maximum Transmission Unit (MTU) size for the VPC network interfaces. This value defines the largest packet size that can be transmitted over the network without fragmentation. The default value of 1460 bytes is typically used for Ethernet networks and is suitable for most cloud networking scenarios."
}

variable "global_routing_mode" {
  type        = string
  default     = "GLOBAL"
  description = "Defines the routing mode for the VPC network. When set to 'GLOBAL', network traffic can be routed across all regions in the project, allowing resources in different regions to communicate with each other. This is typically used for multi-region deployments. The default value is 'GLOBAL'."
}

variable "subnet_name" {
  type        = string
  description = "The name of the subnet to be created or used within the VPC. This should follow the naming convention: <project>-<environment>-<region>-<purpose>-subnet. The name should be meaningful and help identify the subnet's purpose (e.g., public, private, backend)."
}

variable "ip_range" {
  type        = string
  description = "The IP address range for the subnet in CIDR notation. The default value '10.2.0.0/16' provides a large enough address space for subnetting and resource allocation within the VPC."
  default     = "10.2.0.0/16"
}

variable "stack_type" {
  type        = string
  description = "The stack type to be used for the VPC network. This determines whether the network will support both IPv4 and IPv6. The default value 'IPV4_IPV6' indicates support for both IPv4 and IPv6 addressing."
  default     = "IPV4_IPV6"
}

variable "aggregation_interval" {
  type        = string
  description = "The aggregation interval for network traffic data collection. The default value 'INTERVAL_30_SEC' specifies that traffic data will be aggregated at 30-second intervals, which provides a good balance between granularity and performance."
  default     = "INTERVAL_30_SEC"
}

variable "include_all_metadata" {
  type        = string
  description = "Specifies whether all metadata should be included in network traffic logs. The default value 'INCLUDE_ALL_METADATA' ensures that complete metadata about network activities (such as IP addresses, ports, and protocols) is collected for monitoring and troubleshooting."
  default     = "INCLUDE_ALL_METADATA"
}
