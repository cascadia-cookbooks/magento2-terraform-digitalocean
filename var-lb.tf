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

variable "lb_health_check_protocol" {
    description = "Protocol for load balancer health check"
    default = "http"
}

variable "lb_health_check_port" {
    description = "Port for load balancer health check"
    default = 80
}

variable "lb_health_check_path" {
    description = "Path for load balancer health check"
    default = "/"
}

variable "lb_health_check_interval" {
    description = "Health check interval (seconds) for load balancer"
    default = 10
}

variable "lb_health_check_timeout" {
    description = "Health check timeout (seconds) for load balancer"
    default = 5
}

variable "lb_health_check_unhealthy_threshold" {
    description = "Number of health check failures before removal from pool"
    default = 3
}

variable "lb_health_check_healthy_threshold" {
    description = "Number of health check successes before inclusion in pool"
    default = 3
}
