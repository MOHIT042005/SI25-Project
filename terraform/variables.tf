variable "github_token" {
  description = "GitHub OAuth token to allow CodePipeline access to repo"
  type        = string
  sensitive   = true
}

variable "github_owner" {
  description = "MOHIT042005"
  type        = string
}

variable "github_repo" {
  description = "SI25-Project"
  type        = string
}

variable "github_branch" {
  description = "GitHub branch to trigger pipeline"
  type        = string
  default     = "main"
}
