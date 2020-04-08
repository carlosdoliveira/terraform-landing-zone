output "public_ip" {
  value = data.azurerm_public_ip.vpn.ip_address
}