variable location {
  type        = string
  default     = "eastus"
  description = "Definição da localidade onde será feito do deployment dos Recursos"
}

variable "profile" {
  type    = string
  default = "production"
}

variable "prefix" {
  type    = string
  default = "lz-"
}

variable "tags" {
  type = map
  default = {
    Environment = "test"
    Owner       = "Carlos Oliveira"
    Email       = "carlos.oliveira@softwareone.com"
  }
}

variable "adds_name" {
  type    = string
  default = "adds"
}

variable "adds_instance_count" {
  type    = number
  default = 2
}

variable "localgwIP" {
  type    = string
  default = "0.0.0.0"
}

variable "localgwAddress" {
  type    = list
  default = ["10.0.0.0/16"]
}