variable "access_key" {
    default = {}
}
variable "secret_key" {
    default = {}
}
variable "dockerlogin" {
    default = {}
}
variable "dockerpsw" {
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
resource "aws_eip_association" "petclinic_static_ip" {
    instance_id = aws_instance.Petclinic.id
    allocation_id = "${data.aws_eip.tags.id}"
}
data "aws_eip" "tags" {
    tags = {
        Name = "Petclinic"
    }
}
resource "aws_instance" "Petclinic" {
    ami = "ami-0892d3c7ee96c0bf7"
    instance_type = "t2.small"
    key_name = "daria_test"
    vpc_security_group_ids = [aws_security_group.SSH.id, aws_security_group.HTTP.id]
    tags = {
        Name = "Petclinic"
    }
    provisioner "file" {
        source = "./init.sh"
        destination = "/home/ubuntu/init.sh"
            connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = "${file("${var.aws_key}")}"
      host        = "${self.public_dns}"
    }
    }
}

resource "aws_security_group" "SSH" {
    name = "Allow SSH"
    description = "Allow trafic on 22 port"

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Owner = "Ponomarenko Daria"
    }
}
resource "aws_security_group" "HTTP" {
    name = "HTTP"
    description = "Allow trafic on 80 port"

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Owner = "Ponomarenko Daria"
    }
}
resource "local_file" "ip_output" {
  content = <<-DOC
  [init_server]
  java_server1 ansible_host=${aws_eip_association.petclinic_static_ip.public_ip}
  DOC
  filename = "./hosts.txt"

  provisioner "local-exec" {
  command = "ansible-playbook --private-key '${var.aws_key}' playbook.yml --extra-var \"login=${var.dockerlogin} psw=${var.dockerpsw}\" "
  }
      
}
