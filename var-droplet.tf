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
    default = "temp"
}
