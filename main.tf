#Projeto IaC - Dados Abertos de Feira
# Módulo:  Cloud Flare IaC
# Versão: 0.1
terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 2.0"
    }
  }
}

provider "cloudflare" { 
  email   = "e-mail"
  api_key = "api_key"
}

# Add a record to the domain
resource "cloudflare_record" "dominio" {
  zone_id = "zone_id"
  name    = "@"
  value   = "ip_destino"
  type    = "A"
  proxied = true
}

# Add a record to the domain
resource "cloudflare_record" "cname" {
  zone_id = "zone_id"
  name    = "www"
  value   = "dominio_destino"
  type    = "CNAME"
  proxied = true
}