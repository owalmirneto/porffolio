resource "local_file" "ansible_inventory" {
  filename = "../ansible/hosts.ini"
  content = templatefile("templates/ansible_hosts.ini.tftpl", {
    rancher_public_ip = aws_instance.rancher_server.public_ip
    k3s_public_ips = [
      aws_instance.k3s_server[0].public_ip,
      aws_instance.k3s_server[1].public_ip,
      aws_instance.k3s_server[2].public_ip
    ]
  })
}
