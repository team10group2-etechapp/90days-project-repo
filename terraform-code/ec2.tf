resource "aws_instance" "mpn-ec2" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = var.keypair_name
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.jenkins-sg.id]
  user_data                   = file("install_jenkins.sh")


  tags = {
    Name = "90days-project"
  }

  depends_on = [aws_key_pair.ssh-key]
}