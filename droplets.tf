module "web" {
    source = "modules/droplet"

    droplet_count = "${var.web_count}"
    droplet_region = "${var.region}"
    droplet_name = "${var.project_id}.${var.web_name}"
    droplet_ssh_keys = "${var.web_ssh_keys}"
    droplet_user_data = "${var.web_user_data}"
}
