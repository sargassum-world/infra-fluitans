resource "random_password" "authtoken" {
  length  = 24
  special = false
  upper   = false
  keepers = {
    revision = 1
  }
}

resource "random_password" "sessions_auth" {
  length = 32
  keepers = {
    revision = 1
  }
}

resource "random_password" "sessions_encryption" {
  length = 32
  keepers = {
    revision = 1
  }
}

resource "random_password" "turbostreams_hash" {
  length = 32
  keepers = {
    revision = 1
  }
}

resource "nomad_job" "fluitans" {
  jobspec = templatefile("${path.module}/fluitans.hcl.tftpl", {
    # Job variables
    job_name         = replace(var.job_name, "-", "_")
    service_name     = replace(var.job_name, "_", "-")
    public_service   = var.job_service_public
    publish_service  = var.job_service_publish
    fluitans_version = var.fluitans_version
    # Application variables
    ztcontroller_authtoken  = random_password.authtoken.result
    dns_domain_name         = var.dns_domain_name
    dns_authtoken           = var.dns_authtoken
    sessions_auth_key       = base64encode(random_password.sessions_auth.result)
    sessions_encryption_key = base64encode(random_password.sessions_encryption.result)
    authn_admin_pw_hash     = var.authn_admin_pw_hash
    turbostreams_hash_key   = base64encode(random_password.turbostreams_hash.result)
  })

  hcl2 {
    enabled = true
  }
}
