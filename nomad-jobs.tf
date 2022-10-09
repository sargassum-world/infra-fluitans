resource "nomad_job" "fluitans" {
  jobspec = templatefile("${path.module}/fluitans.hcl.tftpl", {
    fluitans_version        = var.fluitans_version
    ztcontroller_server     = var.ztcontroller_server
    ztcontroller_authtoken  = var.ztcontroller_authtoken
    dns_domain_name         = var.dns_domain_name
    dns_authtoken           = var.dns_authtoken
    sessions_auth_key       = var.sessions_auth_key
    sessions_encryption_key = var.sessions_encryption_key
    authn_admin_pw_hash     = var.authn_admin_pw_hash
    turbostreams_hash_key   = var.turbostreams_hash_key
  })

  hcl2 {
    enabled = true
  }
}
