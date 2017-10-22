# Web droplet variables
variable "web_count" {
    default = 2
}

variable "web_name" {
    default = "web"
}

variable "web_ssh_keys" {
    description = "Bootstrap SSH key fingerprints"
    default = ["example"]
    # NOTE: Use the DigitalOcean API to find the appropriate SSH key
    # fingerprints to override this value
    # https://developers.digitalocean.com/documentation/v2/#ssh-keys
}

variable "web_user_data" {
    default = "Module test, please see README"
}


# Data droplet variables
variable "data_count" {
    default = 1
}

variable "data_name" {
    default = "data"
}

variable "data_ssh_keys" {
    default = ["example"]
}

variable "data_user_data" {
    default = "Module test, please see README"
}
