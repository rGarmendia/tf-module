terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
    token = var.do_token
}

module "nginx" {
    source       = "./modules/nginx"
    ssh_key      = [data.digitalocean_ssh_key.terraform.id]
    vpc_id       = data.digitalocean_vpc.vpc.id
    image        = var.image
    droplet_name = var.droplet_name
    size         = var.size
    region       = var.region
    do_token     = var.do_token
    
}

data "digitalocean_vpc" "vpc"{
    name  = var.vpc_name
}

data "digitalocean_ssh_key" "terraform" {
  name = "terraform-test"
}