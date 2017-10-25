# Magento module resource
module "magento" {
    source = "github.com/cascadia-cookbooks/magento2-terraform-digitalocean"

    # LastPass project identifier
    lastpass_project = "My Unique LastPass Project Name"

    # Project identifier (should be consistent across environments)
    project_id = "your_unique_project"

    # DigitalOcean data center region
    region = "nyc1"

    # Environment identifier
    environment = "staging"

    # Web droplet overrides
    web_count = 3
    web_user_data = "curl -sL https://example.com/your/provisioning/script | sudo -E bash -"
    web_ssh_keys = [
        "aaaaaa",
        "bbbbbb"
    ]

    # Data droplet overrides
    data_count = 2
    data_user_data = "${data.template_file.data.rendered}"
    data_ssh_keys = [
        "bbbbbb",
        "cccccc"
    ]
}

data "template_file" "data" {
    template = "${file("${path.module}/templates/user-data.tpl")}"

    vars {
        environment = "${var.environment}"
        role = "data"
    }
}
