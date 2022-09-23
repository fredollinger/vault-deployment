listener "tcp" {
  address = "0.0.0.0:8200"
  tls_cert_file = "/opt/vault/tls/tls.crt"
  tls_key_file  = "/opt/vault/tls/tls.key"
}

api_addr = "http://$IP:8200"

storage "file" {
  path = "/opt/vault/data"
}

max_lease_ttl = "10h"
default_lease_ttl = "10h"
ui = true
