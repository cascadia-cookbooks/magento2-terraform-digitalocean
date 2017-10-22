# Module environment
variable "environment" {
    description = "Environment for resources"
    default = "testing"
}

# Domain
variable "project-id" {
    description = "Project identifier"
    default = "magetest"
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

# Data center region
variable "region" {
    description = "Default data center region"
    default = "sfo1"
}

# Load balancer HTTP to HTTPS redirect
variable "lb-https-redirect" {
    description = "Boolean to enable HTTP to HTTPS redirection"
    default = true
}
