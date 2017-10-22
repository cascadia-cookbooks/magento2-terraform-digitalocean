# Module environment
variable "environment" {
    description = "Environment for resources"
    default = "testing"
}

# Domain
variable "domain" {
    description = "Domain name"
    default = "magento.test"
}

# Pulls variables from LastPass
data "external" "lpass" {
    query = {
        project = "${var.lastpass-project}"
    }
    program = ["bash", "${path.module}/scripts/lpass-data.sh"]
}

variable "lastpass-project" {
    description = "Project name in LastPass"
    default = "Magento 2 Template"
}
