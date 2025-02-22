variable "github_token" {
  description = "Token de acceso personal de GitHub"
  type        = string
  sensitive   = true
}

variable "repository_name" {
  description = "Nombre del repositorio a crear"
  type        = string
}

variable "repository_description" {
  description = "Descripción del repositorio"
  type        = string
}

variable "repository_visibility" {
  description = "Visibilidad del repositorio (public o private)"
  type        = string
}
