# Module environment
variable "environment" {
    description = "Environment for resources"
    default = "testing"
}

# Domain
variable "project_id" {
    description = "Project identifier"
    default = "magetest"
}

# Pulls variables from LastPass
data "external" "lpass" {
    query = {
        project = "${var.lastpass_project}"
    }
    program = ["bash", "${path.module}/scripts/lpass-data.sh"]
}

variable "lastpass_project" {
    description = "Project name in LastPass"
    default = "Magento 2 Template"
}

# Data center region
variable "region" {
    description = "Default data center region"
    default = "sfo1"
}
