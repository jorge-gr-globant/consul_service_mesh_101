service {
  name = "counting"
  id = "counting"
  address = "IP_ADDR"
  port = 9002

  connect {
    sidecar_service {}
  }

  check {
    id       = "counting-check"
    http     = "http://IP_ADDR:9002/health"
    method   = "GET"
    interval = "1s"
    timeout  = "1s"
  }
}
