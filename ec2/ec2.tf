resource "aws_security_group" "allow_ssh_terraform" {
  name = "allow_sshh"
  description = "Allow port number 22 for SSH access"
  

  tags = {
      #Environment = "Test"
      Name        = "allow-sshh"
    }
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    cidr_blocks      = ["0.0.0.0/0"] #allowing from everyone
    ipv6_cidr_blocks = ["::/0"]
  }
}

#resource "aws_instance" "terraform" {
  #ami           = var.ami_id
  #instance_type = var.instance_type
  #vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
  
  #tags = {
   # Name = "terraform"
  #}
#}

  