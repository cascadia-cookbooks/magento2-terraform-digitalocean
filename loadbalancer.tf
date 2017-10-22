# DigitalOcean managed load balancer
resource "digitalocean_loadbalancer" "mage_lb" {
    name = "mage-lb-${var.environment}"
    region = "${var.region}"

    droplet_ids = ["pass"]

    redirect_http_to_https = "${var.lb_https_redirect}"

    sticky_sessions {
        type= "${var.lb_sticky_sessions_type}"
        cookie_name = "${var.lb_sticky_sessions_cookie_name}"
        cookie_ttl_seconds = "${var.lb_sticky_sessions_cookie_ttl}"
    }

    healthcheck {
        protocol = "${var.lb_health_check_protocol}"
        port = "${var.lb_health_check_port}"
        path = "${var.lb_health_check_path}"
        check_interval_seconds = "${var.lb_health_check_interval}"
        response_timeout_seconds = "${var.lb_health_check_timeout}"
        unhealthy_threshold = "${var.lb_health_check_unhealthy_threshold}"
        healthy_threshold = "${var.lb_health_check_healthy_threshold}"
    }

    forwarding_rule {
        entry_port = 80
        entry_protocol = "http"

        target_port = 80
        target_protocol = "http"
    }

    forwarding_rule {
        entry_port = 443
        entry_protocol = "https"

        target_port = 443
        target_protocol = "https"

        tls_passthrough = true
    }
}
