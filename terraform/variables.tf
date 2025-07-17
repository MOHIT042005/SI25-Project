# =============================
# GitHub Integration Variables
# =============================

variable "github_token" {
  description = "GitHub OAuth token to allow CodePipeline access to repo"
  type        = string
  sensitive   = true
}

variable "github_owner" {
  description = "GitHub username or org"
  type        = string
  default     = "MOHIT042005"
}

variable "github_repo" {
  description = "GitHub repository name"
  type        = string
  default     = "SI25-Project"
}

variable "github_branch" {
  description = "GitHub branch to trigger pipeline"
  type        = string
  default     = "main"
}

# =============================
# AWS Network/Instance Variables
# =============================

variable "key_name" {
  description = "SSH key pair name to connect to EC2 instance"
  type        = string
}

variable "subnet_id" {
  description = "Public subnet ID to launch EC2 instance"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID used for creating the security group"
  type        = string
}
variable "ami_id" {
  description = "AMI ID to be used for launching the EC2 instance"
  type        = string
}
