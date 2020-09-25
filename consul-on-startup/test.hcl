service {
  name = "counting"
  id = "counting"
  address = "172.27.0.3"
  port = 9002

  connect {
    sidecar_service {
      port = 20000
      address = "172.27.0.4"
      proxy {
        local_service_address  = "172.27.0.3:9002"
        upstreams = [
          {
            destination_name = "counting"
            local_bind_port  = 9002
            local_bind_address = "0.0.0.0",
          }
        ]
      }
    }
  }

  check {
    id       = "counting-check"
    http     = "http://172.27.0.3:9002/health"
    method   = "GET"
    interval = "1s"
    timeout  = "1s"
  }
}

