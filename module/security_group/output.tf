output "security_group_ids" {
  value       = [for sg in aws_security_group.this : sg.id]
  description = "The IDs of the created security groups"
}