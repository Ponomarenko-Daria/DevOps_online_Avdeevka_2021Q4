variable "access_key" {
  default = {}
}
variable "secret_key" {
    default = {}
}
variable "aws_key" {
    default = {}
}


provider "aws" {
  region = "us-west-2"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}
resource "tls_private_key" "this" {
  algorithm = "RSA"
}
resource "aws_instance" "Test_server" {
  ami = "ami-0892d3c7ee96c0bf7"
  instance_type = "t2.xlarge"
  key_name = "daria_test"
  vpc_security_group_ids = [ aws_security_group.SSH.id ]
  provisioner "file" {
    source = "../petclinic"
    destination = "/home/ubuntu/"
    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = "${file("${var.aws_key}")}"
      host        = "${self.public_dns}"
    }
  }
}

resource "aws_security_group" "SSH" {
  name = "SSH"
  description = "Allow ssh for ansible"
  ingress {
    cidr_blocks = [ "0.0.0.0/0" ]
    description = "SSH access"
    from_port = 22
    protocol = "tcp"
    to_port = 22
  } 
  egress {
    cidr_blocks = [ "0.0.0.0/0" ]
    description = "SSH access"
    from_port = 0
    protocol = -1
    to_port = 0
  } 
  tags = {
    Name = "SSH"
    Port = "22"
  }
}

resource "local_file" "ip_output" {
  content = <<-DOC
  [test_server]
  test_server1 ansible_host=${aws_instance.Test_server.public_ip}
  DOC
  filename = "./hosts.txt"

  provisioner "local-exec" {
  command = "ansible-playbook --private-key '${var.aws_key}' test.yml"
  
  }
}

