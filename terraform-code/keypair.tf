resource "tls_private_key" "pk" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "ssh-key" {
  key_name   = var.keypair_name # Create a keypair in AWS!!
  public_key = tls_private_key.pk.public_key_openssh

  provisioner "local-exec" { # Downloads the pem private key to your computer!!
    command = "echo '${tls_private_key.pk.private_key_pem}' > ../../keys/${var.keypair_name}.pem"
  }
}