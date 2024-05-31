output "keypair_id" {
  value = aws_key_pair.this.*.key_pair_id
}

output "keypair_arn" {
  value = aws_key_pair.this.*.arn
}

output "keypair_name" {
  value = aws_key_pair.this.*.key_name
}