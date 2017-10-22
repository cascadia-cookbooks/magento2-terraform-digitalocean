# DigitalOcean droplet
resource "digitalocean_droplet" "droplet" {
    count              = "${var.droplet_count}"
    image              = "${var.droplet_image}"
    name               = "${var.droplet_name}.${count.index + 1}"
    region             = "${var.droplet_region}"
    size               = "${var.droplet_size}"
    backups            = "${var.droplet_backups}"
    private_networking = "${var.droplet_private_networking}"
    ssh_keys           = "${var.droplet_ssh_keys}"
    user_data          = "${coalesce(var.droplet_user_data, "echo 'No user-data configured'")}"
}
