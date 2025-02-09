resource "aws_instance" "this" {
  ami                    = var.ami_id
  vpc_security_group_ids = [var.sg_id]
  instance_type          = var.instance_type
  tags = var.tags
}

output "public_ip" {
  value = aws_instance.this.public_ip
}

output "private_ip" {
  value = aws_instance.this.private_ip
  
}