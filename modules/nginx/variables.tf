variable "image"{
    type    = string
    default = ""
}

variable "droplet_name"{
    type    = string
    default = ""
}

variable "size"{
    type    = string
    default = ""
}

variable "region"{
    type    = string
    default = ""
}

variable "ssh_key"{
    type = list
}

variable "vpc_id" {
    type    = string
    default = ""
}

variable "do_token" {
    type    = string
    default = ""
}