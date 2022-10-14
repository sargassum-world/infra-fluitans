# Infrastructure variables

variable "nomad_server" {
  type        = string
  description = "Path of the Nomad server's HTTP API"
}

variable "nomad_secret_id" {
  type        = string
  description = "Secret ID for Nomad ACL token"
  sensitive   = true
}

variable "nomad_accessor_id" {
  type        = string
  description = "Accessor ID for Nomad ACL token"
}

variable "desec_api_key" {
  type        = string
  description = "Auth token of the deSEC DNS server's HTTP API"
  sensitive   = true
}

# Job variables

variable "job_name" {
  type        = string
  description = "Name of the Nomad job and service"
}

variable "job_service_public" {
  type        = bool
  description = "Whether to publicly expose the webapp"
}

variable "job_service_custom_name" {
  type        = string
  description = "The custom domain name for publishing the webapp"
}

variable "fluitans_version" {
  type        = string
  description = "Version tag of the container for fluitans"
}

# Application variables

variable "dns_domain_name" {
  type        = string
  description = "Parent domain for assigning network domain names"
}

variable "dns_authtoken" {
  type        = string
  description = "Auth token of the deSEC DNS server's HTTP API"
  sensitive   = true
}

variable "authn_admin_pw_hash" {
  type        = string
  description = "Password hash for the admin account"
  sensitive   = true
}
