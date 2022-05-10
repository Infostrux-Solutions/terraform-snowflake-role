
variable "name" {
  type        = string
  description = "Name of the role."
}

variable "comment" {
  type        = string
  description = "Specifies a comment for the user."
  default     = "Created by Terraform."
}

variable "granted_roles" {
  type        = set(string)
  description = "Roles that the role created by the module will have acces."
  default     = []
}
