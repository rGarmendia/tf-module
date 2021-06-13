resource "digitalocean_droplet" "droplet" {
    image    = var.image  
    name     = var.droplet_name  
    size     = var.size  
    region   = var.region  
    ssh_keys = [var.ssh_key[0]]
    vpc_uuid = var.vpc_id
}

