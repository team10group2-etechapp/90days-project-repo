output "public_dns" {
  description = "output the jenkins server public ip"
  value       = join("", ["http://", aws_instance.mpn-ec2.public_dns, ":8080"])
}

output "jenkins_initial_password" {
  description = "get the initial password from ec2 instance"
  value       = "sudo ssh -i ${var.keypair_name}.pem ubuntu@${aws_instance.mpn-ec2.public_dns} sudo runuser -u jenkins cat /var/lib/jenkins/secrets/initialAdminPassword"
}