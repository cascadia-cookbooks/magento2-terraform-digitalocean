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

### Override variables

`lastpass_project` = (string) Name of LastPass account where secrets are kept. Default: 'Magento 2 Template'
`region` = (string) The default region to create resources. Default: 'sfo1'
`project_id` = (string, no spaces or special characters) Unique project identifier. Default: 'magetest'
`environment` = (string) Environment identifier. Default: 'testing'

`web_count` = (number) Number of web droplets to create. Default: 2
`web_name` = (string) Web droplet identifier. Default: 'web'
`web_user_data` = User data for web droplets. Can be any valid Terraform user-data data type (UTF-8 string, file, template, base64). Default: "echo 'No user-data configured'"
`web_ssh_keys` = (list) SSH key fingerprints from DigitalOcean API

`data_count` = (number) Number of data droplets to create. Default: 1
`data_name` = (string) Data droplet identifier. Default: 'data'
`data_user_data` = User data for data droplets. Can be any valid Terraform user-data data type (UTF-8 string, file, template, base64). Default: "echo 'No user-data configured'"
`data_ssh_keys` = (list) SSH key fingerprints from DigitalOcean API
