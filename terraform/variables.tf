variable "location" {
  default = "East US"
}

variable "db_password" {
  type      = string
  sensitive = true
}