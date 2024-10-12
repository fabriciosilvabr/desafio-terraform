resource "aws_ecr_repository" "example" {
  name = var.name
}
output "repository_url" {
  value = aws_ecr_repository.example.repository_url
}