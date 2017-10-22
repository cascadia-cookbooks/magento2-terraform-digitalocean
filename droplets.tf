module "web" {
    source = "modules/droplet"

    droplet_count = "${var.web_count}"
    droplet_region = "${var.region}"
    droplet_name = "${var.project_id}.${var.environment}.${var.web_name}"
    droplet_ssh_keys = "${var.web_ssh_keys}"
    droplet_user_data = "${var.web_user_data}"
}

module "data" {
    source = "modules/droplet"

    droplet_count = "${var.data_count}"
    droplet_region = "${var.region}"
    droplet_name = "${var.project_id}.${var.environment}.${var.data_name}"
    droplet_ssh_keys = "${var.data_ssh_keys}"
    droplet_user_data = "${var.data_user_data}"
}
