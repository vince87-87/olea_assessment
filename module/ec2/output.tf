output "id" {
  description = "The ID of the instance"
  value = try(
    aws_instance.this[0].id,
    null,
  )
}

output "arn" {
  description = "The ARN of the instance"
  value = try(
    aws_instance.this[0].arn,
    null,
  )
}