# Load balancer variables

variable "lb_https_redirect" {
    description = "Boolean to enable HTTP to HTTPS redirection"
    default = true
}

variable "lb_sticky_sessions_type" {
    description = "Sticky session type"
    default = "cookies"
}

variable "lb_sticky_sessions_cookie_name" {
    description = "Sticky session cookie name"
    default = "DO-LB"
}

variable "lb_sticky_sessions_cookie_ttl" {
    description = "Sticky session lifetime in seconds"
    default = 300
}
