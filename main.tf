# DigitalOcean provider configuration
provider "digitalocean" {
    token = "${data.external.lpass.result.do_token}"
}
