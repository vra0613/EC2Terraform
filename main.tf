resource "aws_instance" "Jenkins_Master" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  root_block_device {
    volume_type           = "gp2"
    volume_size           = "1200"
    encrypted             = true
    delete_on_termination = true
  }

  tags = {
    Name = "Jenkins_Master"
  }
}
