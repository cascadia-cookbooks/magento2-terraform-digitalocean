# Magento 2 Terraform - Digital Ocean

### Usage Example

Basic barebones usage of this module can be seen in the following example:

```
module "magento" {
    # Reference this module
    source = "github.com/cascadia-cookbooks/magento2-terraform-digitalocean"

    # Change DigitalOcean region (if necessary, defaults to 'sfo1')
    region = "nyc1"

    # Environment identifier (defaults to 'testing')
    environment = "staging"

    # Web droplet overrides
    web_user_data = "curl -sL https://example.com/your/provisioning/script | sudo -E bash -"
    web_ssh_keys = [
        "xxxxxx",
        "yyyyyy"
    ]

    # Data droplet overrides
    data_user_data = "echo 'A simple one liner works as well'"
    data_ssh_keys = [
        "yyyyyy",
        "zzzzzz"
    ]
}

```
