provider "desec" {
  api_token = var.desec_api_token
}

provider "nomad" {
  address   = var.nomad_server
  secret_id = var.nomad_secret_id
}
