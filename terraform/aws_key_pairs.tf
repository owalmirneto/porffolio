variable "ssh_public_key_content" {
  type      = string
  sensitive = true
}

resource "aws_key_pair" "site_ssh_key" {
  key_name   = "site-walmir-dev"
  public_key = var.ssh_public_key_content
}
