# Set environment identifier variable
variable "environment" {
    description = "Environment identifier"
    default = "staging"
}

# Magento module resource
module "magento" {
    source = "github.com/cascadia-cookbooks/magento2-terraform-digitalocean"

    # DigitalOcean data center region
    region = "nyc1"

    # Environment identifier
    environment = "${var.environment}"

    # Web droplet overrides
    web_count = 3
    web_user_data = "${data.template_file.web.rendered}"
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

# User data template files
data "template_file" "web" {
    template = "${file("${path.module}/templates/user-data.tpl")}"

    vars {
        environment = "${var.environment}"
        role = "web"
    }
}

data "template_file" "data" {
    template = "${file("${path.module}/templates/user-data.tpl")}"

    vars {
        environment = "${var.environment}"
        role = "data"
    }
}
