# main.tf
provider "aws" {
  region = "us-east-1"
}

# VPC for Network
resource "aws_vpc" "poc_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = { Name = "POC-VPC" }
}

# S3 Bucket (Mandatory requirement)
resource "aws_s3_bucket" "artifact_bucket" {
  bucket = "my-devops-poc-bucket-2026"
}

# ECS Cluster
resource "aws_ecs_cluster" "poc_cluster" {
  name = "devops-cluster"
}