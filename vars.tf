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

variable "fluitans_version" {
  type        = string
  description = "Version tag of the container for fluitans"
}

# Application variables

variable "ztcontroller_server" {
  type        = string
  description = "Path of the ZeroTier One network controller's HTTP API"
}

variable "ztcontroller_authtoken" {
  type        = string
  description = "Auth token of the ZeroTier One network controller's HTTP API"
  sensitive   = true
}

variable "dns_domain_name" {
  type        = string
  description = "Parent domain for assigning network domain names"
}

variable "dns_authtoken" {
  type        = string
  description = "Auth token of the deSEC DNS server's HTTP API"
  sensitive   = true
}

variable "sessions_auth_key" {
  type        = string
  description = "Authentication key for signing session data"
  sensitive   = true
}

variable "sessions_encryption_key" {
  type        = string
  description = "Encryption key for encrypting session data"
  sensitive   = true
}

variable "authn_admin_pw_hash" {
  type        = string
  description = "Password hash for the admin account"
  sensitive   = true
}

variable "turbostreams_hash_key" {
  type        = string
  description = "HMAC key for signing Action Cable channels for Turbo Streams"
  sensitive   = true
}
