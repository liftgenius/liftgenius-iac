variable "rabbitmq_admin_username" {
    type            = string
    default         = "guest"
}

variable "rabbitmq_admin_password" {
    type            = string
    default         = "guest"
    sensitive       = true
}

variable "rabbitmq_host" {
    type            = string
    default         = "rabbitmq"
}

variable "rabbitmq_port" {
    type            = number
    default         = 15672
}

variable "rabbitmq_application_username" {
    type            = string
    default         = "application_user"
}

variable "rabbitmq_application_password" {
    type            = string
    default         = "changeme123"
    sensitive       = true
}

variable "rabbitmq_vhost_name" {
    type            = string
    default         = "test"
}

variable "rabbitmq_queues" {
    type            = set(string)
    default         = [ "test" ]
}

variable "rabbitmq_exchanges" {
    type            = set(string)
    default         = [ "test" ]
  
}