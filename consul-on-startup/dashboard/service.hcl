service {
  name = "dashboard"
  port = 9003
  address = "IP_ADDR"

  connect {
    sidecar_service {
      proxy {
        upstreams = [
          {
            destination_name = "counting"
            local_bind_port  = 5000
          }
        ]
      }
    }
  }

  check {
    id       = "dashboard-check"
    http     = "http://IP_ADDR:9003/health"
    method   = "GET"
    interval = "1s"
    timeout  = "1s"
  }
}
