output "null_resource_id" {
  description = "An arbitrary value that changes each time the resource is replaced."
  value       = null_resource.foo.id
}

output "example_value" {
  description = "Example variable"
  value       = var.example
}

output "partition" {
  description = "AWS partition in which Terraform is working"
  value       = data.aws_partition.current
}