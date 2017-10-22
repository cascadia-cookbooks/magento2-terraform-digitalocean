variable "droplet_count" {
    description = "Number of droplets to create"
    default = 1
}

variable "droplet_image" {
    description = "Image to use for droplet creation"
    default = "ubuntu-16-04-x64"
}

variable "droplet_name" {
    description = "Name for droplet"
    default = "droplet"
}

variable "droplet_region" {
    description = "Default region for droplet"
}

variable "droplet_size" {
    description = "Droplet size"
    default = "512mb"
}

variable "droplet_backups" {
    description = "Droplet backup policy"
    default = false
}

variable "droplet_private_networking" {
    description = "Boolen for droplet private networking"
    default = true
}

variable "droplet_ssh_keys" {
    description = "SSH key fingerprints"
    type = "list"
}

variable "droplet_user_data" {
    description = "User data for droplet creation"
}
