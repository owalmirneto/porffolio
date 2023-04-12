resource "aws_instance" "rancher_server" {
  ami                    = "ami-007855ac798b5175e"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.site_ssh_key.key_name
  vpc_security_group_ids = [aws_security_group.site_security_group.id]

  tags = {
    Name = "Site-Rancher"
    Type = "rancher"
  }
}

resource "aws_instance" "k3s" {
  count                  = 3
  ami                    = "ami-007855ac798b5175e"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.site_ssh_key.key_name
  vpc_security_group_ids = [aws_security_group.site_security_group.id]

  tags = {
    Name = "Site-K3S-${count.index}"
    Type = "k3s"
  }
}
